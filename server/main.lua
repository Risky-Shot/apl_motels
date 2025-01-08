local sharedConfig = require 'config.shared'
local config = require 'config.server'

-- Function to update doorlock data
local function UpdateDoorLock(roomId, data)
    local doorData = exports.ox_doorlock:getDoorFromName(roomId)
    if not doorData then return false end

    local event = data.event
    if event == "rent:start" then
        doorData.characters = {data.citizenid}
        exports.ox_doorlock:editDoor(doorData.id, doorData)
        return true
    elseif event == "rent:end" then
        doorData.characters = ''
        exports.ox_doorlock:editDoor(doorData.id, doorData)
        return true
    elseif event == "keyholder" then
        if not doorData.characters or #doorData.character >= config.keyholderLimit then return false end

        doorData.characters[#doorData.character + 1] = data.citizenid
        return true
    end
end

-- Function to check if user own a particular room
local function DoesPlayerOwnRoom(cid, roomid)
    local response = MySQL.single.await('SELECT EXISTS (SELECT 1 FROM `apl_motels` WHERE `roomId` = ? AND `owner` = ?) as owned', {roomid, cid})
    return response.owned == 1 and true or false
end

-- Function to check if user own any motel
local function DoesPlayerOwnAnyRoom(cid)
    local response = MySQL.single.await('SELECT EXISTS (SELECT 1 FROM `apl_motels` WHERE `owner` = ?) as owned', {cid})

    return response.owned == 1 and true or false
end

-- Function to Implement Money Deduction from whichever script you want
-- U should do a check and "return true" when money is deducted
-- default return is false
local function DeductMoney(source, amount)
    local player  = exports.qbx_core:GetPlayer(source)
    if not player or not player.PlayerData.citizenid then return false end

    local citizenid = player.PlayerData.citizenid

    local playerAccount = exports.ox_banking:GetCharacterAccount(citizenid)

    if not playerAccount then return false end

    local accountId = playerAccount.accountId

    local response = exports.ox_banking:RemoveBalance(accountId, amount, "Motel Rental", false)

    if response.success == true then return true end

    return false
end

local function RegisterStash()
    -- for k = 1, #sharedConfig.motels do
    --     local rooms = sharedConfig.motels[k].rooms

    --     for i = 1, #rooms do
    --         local roomId = rooms[i].roomId

    --         local data = {
    --             id = "stash_apl_motel",
    --             label = "Stash",
    --             slots = config.stashInfo.slots,
    --             maxWeight = config.stashInfo.maxWeight
    --         }

    --         -- Shared stash disabled due to change in requirement
    --         exports.ox_inventory:RegisterStash(data.id, data.label, data.slots, data.maxWeight, nil)
    --     end
    -- end

    exports.ox_inventory:RegisterStash("stash_apl_motels", "Motel Storage", config.stashInfo.slots, config.stashInfo.maxWeight, true)
end

RegisterStash()

-- Makes Sure No Purchase is done during updating of motels (make this Global State and set no interaction or purchase during this stage)
GlobalState.updatingMotels = false

local function UpdateMotels()
    GlobalState.updatingMotels = true
    local roomData = MySQL.query.await('SELECT `roomId`, `expire` FROM `apl_motels` WHERE `rented` = 1')

    for i = 1, #roomData do
        if roomData[i].expire - os.time() < 0 then
            -- Update SQL
            local affectedRows = MySQL.update.await('UPDATE `apl_motels` SET `owner` = ?, `rented` = 0, `expire` = ?, `keyholder` = ? WHERE `roomId` = ?', {
                nil, nil, nil, roomData[i].roomId
            })

            if affectedRows > 0 then
                -- Update DoorLock
                UpdateDoorLock(roomData[i].roomId, {event = "rent:end"})
            end
        end
    end

    GlobalState.updatingMotels = false
end

local function GetRoomData(roomId)
    for i = 1, #sharedConfig.motels do
        local rooms = sharedConfig.motels[i].rooms
        for k = 1, #rooms do
            if roomId == rooms[k].roomId then
                return rooms[k]
            end
        end
    end
end

-- "0 * * * *" update every hour
lib.cron.new("0 * * * *", function()
    UpdateMotels()
end, {debug = false})

-- Callback to fetch empty rooms in a motel
lib.callback.register('apl_motels:server:getEmptyMotels', function(source, motelId)
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data
    local motels = {}

    -- Server Side Check to check if player owns a motel
    if DoesPlayerOwnAnyRoom(player.PlayerData.citizenid) then 
        return motels
    end

    local response = MySQL.query.await('SELECT `roomId` FROM `apl_motels` WHERE `motelId` = ? AND `rented` = 0', {motelId})
    
    for i = 1, #response do
        local roomId = response[i].roomId
        local roomNo = sharedConfig.fetchRoomNumberFromId(roomId)
        local roomData = GetRoomData(roomId)

        table.insert(motels, {value = tostring(roomId), label = roomNo.." | ($"..roomData.roomPrice..") per day"})
    end

    return motels
end)

-- Testing : Check if able to buy same motel simultaneously
lib.callback.register('apl_motels:server:rentMotel', function(source, roomId, days)
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data

    while GlobalState.updatingMotels do
        print('Waiting for Motels to Update')
        Wait(1000)
    end

    -- Server Side Check to check if player owns a motel
    if DoesPlayerOwnAnyRoom(player.PlayerData.citizenid) then 
        print('Player Already Own a motel room')
        return false 
    end

    local response = MySQL.query.await('SELECT `rented` FROM `apl_motels` WHERE `roomId` = ?', {roomId})
    if not response and response[1].rented then
        print('Alread Rented') 
        return false 
    end

    -- Detuct Money from Bank/Character
    local roomData = GetRoomData(roomId)
    local hasPaid = DeductMoney(source, roomData.roomPrice * tonumber(days))

    if not hasPaid then 
        print('Failed to pay for motel')
        return false 
    end

    local expiry = os.time() + 86400 * tonumber(days) -- current time + rent duration in seconds

    local affectedRows = MySQL.update.await('UPDATE `apl_motels` SET `owner` = ?, `rented` = 1, `expire` = ? WHERE `roomId` = ?', {
        player.PlayerData.citizenid, expiry, roomId
    })
    if affectedRows < 1 then return false end

    -- Modify Door Lock and add user cid
    local hasUpdated = UpdateDoorLock(roomId, {event = "rent:start", citizenid = player.PlayerData.citizenid})
    
    if not hasUpdated then return false end

    return true
end)

-- Callback to check if room is owned by interacting player (only owner, not keyholder)
lib.callback.register('apl_motels:server:ownsRoom', function(source, roomId)
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data

    local owned = DoesPlayerOwnRoom(player.PlayerData.citizenid, roomId)

    return owned
end)

-- Callback to check if any room is owned by player
lib.callback.register('apl_motels:server:ownsAnyRoom', function(source, roomId)
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data

    local owned = DoesPlayerOwnAnyRoom(player.PlayerData.citizenid)

    return owned
end)

lib.callback.register('apl_motels:server:getPlayerOwnedRoom', function(source)
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data

    local cid = player.PlayerData.citizenid
    
    local retval = nil

    local roomId = MySQL.scalar.await('SELECT `roomId` FROM `apl_motels` WHERE `owner` = ? LIMIT 1', {
        cid
    })


    retval = sharedConfig.fetchRoomNumberFromId(roomId)
    return retval
end)

local function hasAccess(citizenId, roomId)
    local property = MySQL.single.await('SELECT `owner`, `keyholder` FROM `apl_motels` WHERE `roomId` = ?', {roomId})

    if citizenId == property.owner then return true end
    if citizenId == property.keyholder then return true end

    return false
end

-- Callback to check if room items are accessible by player (owner + keyholder)
lib.callback.register('apl_motels:server:hasAccess', function(source, roomId)
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data

    local response = hasAccess(player.PlayerData.citizenid,  roomId)

    return response
end)

-- Callback to manage owned motel
lib.callback.register('apl_motels:server:manageMotel', function(source, event, roomId, data)
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data

    -- Server Side Check for ownership
    local owned = DoesPlayerOwnRoom(player.PlayerData.citizenid, roomId)
    if not owned then return false end

    if event == "extend" then
        -- Early Exit if days are out of accepted range
        if tonumber(data.days) < 1 or tonumber(data.days) > 7 then return false end

        local affectedRows = MySQL.update.await('UPDATE `apl_motels` SET `expire` = expire + ? WHERE `roomId` = ?', {
            tonumber(data.days) * 86400, roomId
        })
        if affectedRows < 1 then return false end
        -- Deduct Money

        local roomData = GetRoomData(roomId)
        local hasPaid = DeductMoney(source, roomData.roomPrice * tonumber(data.days))

        if not hasPaid then return false end

        return true 
    elseif event == "keyholder" then
        local affectedRows = MySQL.update.await('UPDATE `apl_motels` SET `keyholder` = ? WHERE `roomId` = ?', {
            data.citizenId, roomId
        })

        if affectedRows < 1 then return false end

        return true
    end
end)    

lib.callback.register('apl_motels:server:expiryDate', function(source, roomId)
    local data = MySQL.single.await('SELECT `expire` FROM `apl_motels` WHERE `roomId` = ?', {roomId})

    return os.date("%m/%d/%Y - %I:%M %p", tonumber(data.expire))
end)

-- Callback for spawn coords in spawnselector (do a nil check and add in spawns table if not nil)
lib.callback.register('apl_motels:server:fetchSpawnForOwnedMotels', function(source)
    -- should return a table with spawn coords and motel label
    local player = exports.qbx_core:GetPlayer(source) -- Get Player Data
    local cid = player.PlayerData.citizenid

    if not DoesPlayerOwnAnyRoom(cid) then return false end

    local data = MySQL.single.await('SELECT `roomId` FROM `apl_motels` WHERE `owner` = ?', {cid})
    
    local roomData = GetRoomData(data.roomId)

    local data = {
        label = "Motel",
        coords = roomData.roomData.spawn
    }

    return data
end)

-- Hook to disable move into stash when not own any motel
exports.ox_inventory:registerHook('swapItems', function(payload) 
    local fromType = payload.fromType
    local toInventory = payload.toInventory

    -- Only Disable when player Doesn't own any room
    local player = exports.qbx_core:GetPlayer(payload.source) -- Get Player Data
    local cid = player.PlayerData.citizenid
    if DoesPlayerOwnAnyRoom(cid) then 
        return true
    end

    if fromType == "player" and toInventory == "stash_apl_motels:"..cid then 
        return false 
    end
end)

local query = [[
    INSERT INTO `apl_motels` (`roomId`, `motelId`)
        VALUES (?, ?)
        ON DUPLICATE KEY UPDATE
            `roomId` = VALUES(`roomId`),
            `motelId` = VALUES(`motelId`)
]]

function SetupSQL()
    CreateThread(function()
        for motelId, motelData in pairs(sharedConfig.motels) do
            for roomIndex, roomData in pairs(motelData.rooms) do
                Wait(1)
                MySQL.query.await(query, {roomData.roomId, motelId})
            end
        end
    end)
end

SetupSQL()