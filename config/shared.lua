return {
    motels = {
        [1] = {
            name = "PinkCage Motel",
            centerCoord = vec3(326.3893, -211.8089, 54.0863), -- Make Sure it's center of property or MLO building
            blipData = {
                coords = vec3(316.6376, -233.0067, 53.9667), -- Make Sure it's entrance area for better navigation
            },
            reception = {
                coords = vec4(324.9963, -229.7733, 54.2202, 166.4136),
                model = `U_M_Y_Ushi`,
                ped = nil,
                
            },
            rooms = {
                [1] = {
                    roomId = "pinkcage:room_1", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(0.0, 0.0, 0.0, 0.0), -- Spawn Selector Spawn Coords
                        stash = vec3(311.35, -224.28, 54.5), -- Stash Open Coords
                        closet = vec3(309.4055, -225.6960, 54.2202), -- Closet Coords
                        manage = vec3(308.8587, -220.3347, 54.2015) -- Manage Panel Coords
                    }
                }
            }
        }
    },

    rentDays = {
        {
            value = "7",
            label = "7 Days"
        },
        {
            value = "15",
            label = "15 Days"
        },
        {
            value = "30",
            label = "30 Days"
        }
    },

    fetchRoomNumberFromId = function(roomId)
        return roomId:match("_(%d+)")
    end
}