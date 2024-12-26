-- Variables
local config = require 'config.client'
local sharedConfig = require 'config.shared'
local isLoggedIn = LocalPlayer.state.isLoggedIn

local function roomRentInput(motelId)
    -- Fetch From DB
    local ownsAnyRoom = lib.callback.await('apl_motels:server:ownsAnyRoom', false)

    if ownsAnyRoom then
        lib.notify({
            title = sharedConfig.motels[motelId].name,
            type = "error",
            description = locale('error.motel_already_rent')
        })
        return
    end
    local availableRooms = lib.callback.await('apl_motels:server:getEmptyMotels', false, motelId)

    if #availableRooms < 1 then 
        lib.notify({
            title = sharedConfig.motels[motelId].name,
            type = "error",
            description = locale('error.no_room_motel')
        })
        return 
    end

    local input = lib.inputDialog(sharedConfig.motels[motelId].name, {
        {
            type = "select", 
            label = locale('inputs.available_rooms'), 
            icon = "person-shelter",
            options = availableRooms, 
            required = true, clearable = false, searchable = true
        },
        {
            type = "select", 
            label = locale('inputs.rental_period'), 
            icon = "calendar",
            options = sharedConfig.rentDays, 
            default = sharedConfig.rentDays[1].value,
            required = true, clearable = false, searchable = true
        },
    })

    if not input then return end

    lib.callback('apl_motels:server:rentMotel', false, function(purchased) 
        if purchased then
            lib.notify({
                title = sharedConfig.motels[motelId].name,
                type = "success",
                description = locale('success.rented'), 
            })
        else
            lib.notify({
                title = sharedConfig.motels[motelId].name,
                type = "error",
                description = locale('error.rented'), 
            })
        end
    end, input[1], input[2])
end

local function roomManager(roomId)
    local owned = lib.callback.await('apl_motels:server:ownsRoom', false, roomId)

    if not owned then return end

    local expiry = lib.callback.await('apl_motels:server:expiryDate', false, roomId)

    local managerContext = lib.registerContext({
        id = "apl_motels:room:manage",
        title = "Manage Room",
        options = {
            {
                title = "Extend Rental Days",
                description = expiry,
                onSelect = function()
                    local input = lib.inputDialog(locale('inputs.extend_period'), {
                        {
                            type = "slider",
                            label = "Days (1-7)",
                            required = true,
                            default = 1,
                            min = 1,
                            max = 7,
                            step = 1
                        }
                    })

                    if not input then return end

                    local success = lib.callback.await('apl_motels:server:manageMotel', false, "extend", roomId, {days = tonumber(input[1])})
                    if success then
                        lib.notify({
                            title = "Rent Extend",
                            type = "success",
                            description = "Rent Extended for next "..input[1].." days."
                        })
                    else
                        lib.notify({
                            title = "Rent Extend",
                            type = "error",
                            description = locale('error.extend_failed')
                        })
                    end
                end
            },
            -- {
            --     title = "Change Keyholder",
            --     onSelect = function()
            --         local input = lib.inputDialog("Change Keyholder", {
            --             {
            --                 type = "input",
            --                 label = "Citizen Id",
            --                 description = "Keep Empty to remove keholder",
            --             }
            --         })

            --         if not input then return end

            --         local success = lib.callback.await('apl_motels:server:manageMotel', false, "keyholder", roomId, {citizenId = qbx.string.trim(input[1])})

            --         if success then
            --             lib.notify({
            --                 title = "Keyholder",
            --                 type = "success",
            --                 description = "Updated : "..(qbx.string.trim(input[1]))
            --             })
            --         else
            --             lib.notify({
            --                 title = "Keyholder",
            --                 type = "error",
            --                 description = "Action Failed"
            --             })
            --         end
                    
            --     end
            -- },
        }
    })

    lib.showContext('apl_motels:room:manage')
end

local pedSpawned = false
local blips = {}
local points = {}

local zones = {}

local roomSpawned = false
local roomPoints = {}

local function setupRooms(motelId)
    if roomSpawned then return end
    local roomsData = sharedConfig.motels[motelId].rooms
    for i=1, #roomsData do
        local roomId = roomsData[i].roomId
        local stashPoint = lib.points.new({
            coords = roomsData[i].roomData.stash,
            distance = 1,
        })

        function stashPoint:onEnter()
            lib.showTextUI('[E] Access Stash', {
                position = 'right-center'
            })
        end

        function stashPoint:onExit()
            lib.hideTextUI()
        end

        function stashPoint:nearby()
            if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
                lib.callback('apl_motels:server:hasAccess', false, function(response)
                    if response then
                        exports.ox_inventory:openInventory('stash', {id = 'stash_apl_motels'})
                    end
                end, roomId)
            end
        end

        roomPoints[#roomPoints + 1] = stashPoint

        local closetPoint = lib.points.new({
            coords = roomsData[i].roomData.closet,
            distance = 1.5,
        })

        function closetPoint:onEnter()
            lib.showTextUI('[E] Change Cloths', {
                position = 'right-center'
            })
        end

        function closetPoint:onExit()
            lib.hideTextUI()
        end

        function closetPoint:nearby()
            if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
                print('Opened Closet')
            end
        end

        local managePoint = lib.points.new({
            coords = roomsData[i].roomData.manage,
            distance = 1.5,
        })

        function managePoint:onEnter()
            lib.showTextUI('[E] Manage Room', {
                position = 'right-center'
            })
        end

        function managePoint:onExit()
            lib.hideTextUI()
        end

        function managePoint:nearby()
            if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
                if not GlobalState.updatingMotels then
                    roomManager(roomId)
                end
            end
        end

        roomPoints[#roomPoints + 1] = managePoint
    end
    roomSpawned = true
end

local function setupMotels()
    if pedSpawned then return end
    for k = 1, #sharedConfig.motels do
        local motelPoint = lib.points.new({
            coords = sharedConfig.motels[k].centerCoord,
            distance = 100,
            reception = sharedConfig.motels[k].reception,
        })

        function motelPoint:onEnter()
            lib.requestModel(self.reception.model, 10000)

            self.reception.ped = CreatePed(0, self.reception.model, self.reception.coords.x, self.reception.coords.y, self.reception.coords.z-1, self.reception.coords.w, false, false)
            SetModelAsNoLongerNeeded(self.reception.model)

            TaskStartScenarioInPlace(self.reception.ped, 'PROP_HUMAN_STAND_IMPATIENT', 0, true)
            FreezeEntityPosition(self.reception.ped, true)
            SetEntityInvincible(self.reception.ped, true)
            SetBlockingOfNonTemporaryEvents(self.reception.ped, true)
            exports.ox_target:addLocalEntity(self.reception.ped, {
                {
                    label = "Rent",
                    distance = 5,
                    onSelect = function()
                        roomRentInput(k)
                    end,
                    canInteract = function()
                        return not GlobalState.updatingMotels
                    end
                },
                {
                    label = "Check Room No",
                    distance = 5,
                    onSelect = function()
                        local room = lib.callback.await('apl_motels:server:getPlayerOwnedRoom', false)
                        print('Room', room)
                        if not room then 
                            lib.notify({
                                title = "Motel",
                                type = "error",
                                description = "No Room Rented."
                            })
                            return 
                        end

                        lib.notify({
                            title = "Motel",
                            type = "success",
                            description = "Rented Room : "..room
                        })

                    end
                },
                {
                    label = "Collect Stuff",
                    distance = 5,
                    onSelect = function()
                        local owns = lib.callback.await('apl_motels:server:ownsAnyRoom', false)
                        if owns then
                            lib.notify({
                                title = "Motel",
                                type = "error",
                                description = "Action Denied"
                            })
                        else
                            exports.ox_inventory:openInventory('stash', {id = 'stash_apl_motels'})
                        end
                    end
                }
            })
        end

        function motelPoint:onExit()
            exports.ox_target:removeLocalEntity(self.reception.ped)
            if DoesEntityExist(self.reception.ped) then
                DeletePed(self.reception.ped)
            end
            self.reception.ped = nil
        end

        points[#points + 1] = motelPoint

        setupRooms(k)

        blips[k] = AddBlipForCoord(sharedConfig.motels[k].blipData.coords.x, sharedConfig.motels[k].blipData.coords.y, sharedConfig.motels[k].blipData.coords.z-1)
        SetBlipSprite(blips[k], 350)
        SetBlipDisplay(blips[k], 4)
        SetBlipScale  (blips[k], 0.80)
        SetBlipColour (blips[k], 2)
        SetBlipAsShortRange(blips[k], true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(sharedConfig.motels[k].name)
        EndTextCommandSetBlipName(blips[k])
    end
    pedSpawned = true
end

local function removeMotels()
    for i = 1, #points do
        if DoesEntityExist(points[i].reception.ped) then
            DeletePed(points[i].reception.ped)
        end
        points[i]:remove()
    end
    for i = 1, #blips do
        RemoveBlip(blips[i])
    end
end

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        setupMotels() 
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
        removeMotels()
        lib.hideTextUI()
        for i=1, #roomPoints do
            roomPoints[i]:remove()
        end
    end
end)