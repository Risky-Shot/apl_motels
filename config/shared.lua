return {
    motels = {
        [1] = {
            name = "Opium Nights Hotel",
            centerCoord = vec3(-720.3113, -2288.0381, 48.2642), -- Make Sure it's center of property or MLO building
            blipData = {
                coords = vec3(-740.2034, -2279.0352, 13.0627), -- Make Sure it's entrance area for better navigation
            },
            reception = {
                coords = vec4(-719.9698, -2260.6248, 13.4524, 177.0432),
                model = `U_M_Y_Ushi`,
                ped = nil,
                
            },
            -- 6 floors 12 rooms each
            -- motelName:room_floorNum_roomNum
            rooms = {
                -- First Floor
                [1] = {
                    roomId = "opium:room_01_01", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-694.9953, -2266.8650, 30.3964), -- Stash Open Coords
                        closet = vec3(-697.6282, -2267.4106, 30.3962), -- Closet Coords
                        manage = vec3(-697.3081, -2262.3376, 30.3963) -- Manage Panel Coords
                    }
                },
                [2] = {
                    roomId = "opium:room_01_02", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-693.6661, -2251.3464, 30.3964), -- Stash Open Coords
                        closet = vec3(-691.0878, -2251.0525, 30.3962), -- Closet Coords
                        manage = vec3(-691.4592, -2256.2378, 30.3964) -- Manage Panel Coords
                    }
                },
                [3] = {
                    roomId = "opium:room_01_03", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-685.2256, -2267.2251, 30.3964), -- Stash Open Coords
                        closet = vec3(-687.8805, -2267.3501, 30.3962), -- Closet Coords
                        manage = vec3(-687.5869, -2262.3501, 30.3964) -- Manage Panel Coords
                    }
                },
                [4] = {
                    roomId = "opium:room_01_04", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-683.9737, -2251.3977, 30.3963), -- Stash Open Coords
                        closet = vec3(-681.3541, -2251.0413, 30.3962), -- Closet Coords
                        manage = vec3(-681.5989, -2256.1636, 30.3964) -- Manage Panel Coords
                    }
                },
                [5] = {
                    roomId = "opium:room_01_05", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-675.5951, -2266.8557, 30.3964), -- Stash Open Coords
                        closet = vec3(-678.1630, -2267.5032, 30.3962), -- Closet Coords
                        manage = vec3(-677.8339, -2262.3169, 30.3964) -- Manage Panel Coords
                    }
                },
                [6] = {
                    roomId = "opium:room_01_06", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-674.3085, -2251.4736, 30.3963), -- Stash Open Coords
                        closet = vec3(-671.6921, -2250.9485, 30.3962), -- Closet Coords
                        manage = vec3(-672.0353, -2256.1667, 30.3964) -- Manage Panel Coords
                    }
                },
                [7] = {
                    roomId = "opium:room_01_07", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-747.1108, -2266.7771, 30.3964), -- Stash Open Coords
                        closet = vec3(-749.7150, -2267.3704, 30.3962), -- Closet Coords
                        manage = vec3(-749.4255, -2262.3677, 30.3964) -- Manage Panel Coords
                    }
                },
                [8] = {
                    roomId = "opium:room_01_08", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-745.7385, -2251.5837, 30.3964), -- Stash Open Coords
                        closet = vec3(-743.1751, -2250.9968, 30.3962), -- Closet Coords
                        manage = vec3(-743.4568, -2256.1355, 30.3964) -- Manage Panel Coords
                    }
                },
                [9] = {
                    roomId = "opium:room_01_09", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-756.8007, -2266.7710, 30.3963), -- Stash Open Coords
                        closet = vec3(-759.4273, -2267.3782, 30.3962), -- Closet Coords
                        manage = vec3(-759.1242, -2262.3230, 30.3964) -- Manage Panel Coords
                    }
                },
                [10] = {
                    roomId = "opium:room_01_10", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-755.4489, -2251.6013, 30.3963), -- Stash Open Coords
                        closet = vec3(-752.8504, -2251.2449, 30.3962), -- Closet Coords
                        manage = vec3(-753.1182, -2256.1096, 30.3964) -- Manage Panel Coords
                    }
                },
                [11] = {
                    roomId = "opium:room_01_11", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-766.4235, -2266.9709, 30.3964), -- Stash Open Coords
                        closet = vec3(-769.0836, -2267.4155, 30.3962), -- Closet Coords
                        manage = vec3(-768.6678, -2262.2756, 30.3963) -- Manage Panel Coords
                    }
                },
                [12] = {
                    roomId = "opium:room_01_12", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 30.3789, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-765.1474, -2251.4773, 30.3964), -- Stash Open Coords
                        closet = vec3(-762.4086, -2250.9431, 30.3962), -- Closet Coords
                        manage = vec3(-762.8463, -2256.1621, 30.3964) -- Manage Panel Coords
                    }
                },
                -- Second Floor
                [13] = {
                    roomId = "opium:room_02_01", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-694.9953, -2266.8650, 39.3964), -- Stash Open Coords
                        closet = vec3(-697.6282, -2267.4106, 39.3962), -- Closet Coords
                        manage = vec3(-697.3081, -2262.3376, 39.3963) -- Manage Panel Coords
                    }
                },
                [14] = {
                    roomId = "opium:room_02_02", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-693.6661, -2251.3464, 39.3964), -- Stash Open Coords
                        closet = vec3(-691.0878, -2251.0525, 39.3962), -- Closet Coords
                        manage = vec3(-691.4592, -2256.2378, 39.3964) -- Manage Panel Coords
                    }
                },
                [15] = {
                    roomId = "opium:room_02_03", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-685.2256, -2267.2251, 39.3964), -- Stash Open Coords
                        closet = vec3(-687.8805, -2267.3501, 39.3962), -- Closet Coords
                        manage = vec3(-687.5869, -2262.3501, 39.3964) -- Manage Panel Coords
                    }
                },
                [16] = {
                    roomId = "opium:room_02_04", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-683.9737, -2251.3977, 39.3963), -- Stash Open Coords
                        closet = vec3(-681.3541, -2251.0413, 39.3962), -- Closet Coords
                        manage = vec3(-681.5989, -2256.1636, 39.3964) -- Manage Panel Coords
                    }
                },
                [17] = {
                    roomId = "opium:room_02_05", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-675.5951, -2266.8557, 39.3964), -- Stash Open Coords
                        closet = vec3(-678.1630, -2267.5032, 39.3962), -- Closet Coords
                        manage = vec3(-677.8339, -2262.3169, 39.3964) -- Manage Panel Coords
                    }
                },
                [18] = {
                    roomId = "opium:room_02_06", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-674.3085, -2251.4736, 39.3963), -- Stash Open Coords
                        closet = vec3(-671.6921, -2250.9485, 39.3962), -- Closet Coords
                        manage = vec3(-672.0353, -2256.1667, 39.3964) -- Manage Panel Coords
                    }
                },
                [19] = {
                    roomId = "opium:room_02_07", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-747.1108, -2266.7771, 39.3964), -- Stash Open Coords
                        closet = vec3(-749.7150, -2267.3704, 39.3962), -- Closet Coords
                        manage = vec3(-749.4255, -2262.3677, 39.3964) -- Manage Panel Coords
                    }
                },
                [20] = {
                    roomId = "opium:room_02_08", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-745.7385, -2251.5837, 39.3964), -- Stash Open Coords
                        closet = vec3(-743.1751, -2250.9968, 39.3962), -- Closet Coords
                        manage = vec3(-743.4568, -2256.1355, 39.3964) -- Manage Panel Coords
                    }
                },
                [21] = {
                    roomId = "opium:room_02_09", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-756.8007, -2266.7710, 39.3963), -- Stash Open Coords
                        closet = vec3(-759.4273, -2267.3782, 39.3962), -- Closet Coords
                        manage = vec3(-759.1242, -2262.3230, 39.3964) -- Manage Panel Coords
                    }
                },
                [22] = {
                    roomId = "opium:room_02_10", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-755.4489, -2251.6013, 39.3963), -- Stash Open Coords
                        closet = vec3(-752.8504, -2251.2449, 39.3962), -- Closet Coords
                        manage = vec3(-753.1182, -2256.1096, 39.3964) -- Manage Panel Coords
                    }
                },
                [23] = {
                    roomId = "opium:room_02_11", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-766.4235, -2266.9709, 39.3964), -- Stash Open Coords
                        closet = vec3(-769.0836, -2267.4155, 39.3962), -- Closet Coords
                        manage = vec3(-768.6678, -2262.2756, 39.3963) -- Manage Panel Coords
                    }
                },
                [24] = {
                    roomId = "opium:room_02_12", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.1125, -2287.4395, 39.3306, 0.6429), -- Spawn Selector Spawn Coords
                        stash = vec3(-765.1474, -2251.4773, 39.3964), -- Stash Open Coords
                        closet = vec3(-762.4086, -2250.9431, 39.3962), -- Closet Coords
                        manage = vec3(-762.8463, -2256.1621, 39.3964) -- Manage Panel Coords
                    }
                },
                -- Third Floor
                [25] = {
                    roomId = "opium:room_03_01", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-694.9953, -2266.8650, 48.2642), -- Stash Open Coords
                        closet = vec3(-697.6282, -2267.4106, 48.2642), -- Closet Coords
                        manage = vec3(-697.3081, -2262.3376, 48.2642) -- Manage Panel Coords
                    }
                },
                [26] = {
                    roomId = "opium:room_03_02", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-693.6661, -2251.3464, 48.2642), -- Stash Open Coords
                        closet = vec3(-691.0878, -2251.0525, 48.2642), -- Closet Coords
                        manage = vec3(-691.4592, -2256.2378, 48.2642) -- Manage Panel Coords
                    }
                },
                [27] = {
                    roomId = "opium:room_03_03", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-685.2256, -2267.2251, 48.2642), -- Stash Open Coords
                        closet = vec3(-687.8805, -2267.3501, 48.2642), -- Closet Coords
                        manage = vec3(-687.5869, -2262.3501, 48.2642) -- Manage Panel Coords
                    }
                },
                [28] = {
                    roomId = "opium:room_03_04", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-683.9737, -2251.3977, 48.2642), -- Stash Open Coords
                        closet = vec3(-681.3541, -2251.0413, 48.2642), -- Closet Coords
                        manage = vec3(-681.5989, -2256.1636, 48.2642) -- Manage Panel Coords
                    }
                },
                [29] = {
                    roomId = "opium:room_03_05", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-675.5951, -2266.8557, 48.2642), -- Stash Open Coords
                        closet = vec3(-678.1630, -2267.5032, 48.2642), -- Closet Coords
                        manage = vec3(-677.8339, -2262.3169, 48.2642) -- Manage Panel Coords
                    }
                },
                [30] = {
                    roomId = "opium:room_03_06", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-674.3085, -2251.4736, 48.2642), -- Stash Open Coords
                        closet = vec3(-671.6921, -2250.9485, 48.2642), -- Closet Coords
                        manage = vec3(-672.0353, -2256.1667, 48.2642) -- Manage Panel Coords
                    }
                },
                [31] = {
                    roomId = "opium:room_03_07", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-747.1108, -2266.7771, 48.2642), -- Stash Open Coords
                        closet = vec3(-749.7150, -2267.3704, 48.2642), -- Closet Coords
                        manage = vec3(-749.4255, -2262.3677, 48.2642) -- Manage Panel Coords
                    }
                },
                [32] = {
                    roomId = "opium:room_03_08", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-745.7385, -2251.5837, 48.2642), -- Stash Open Coords
                        closet = vec3(-743.1751, -2250.9968, 48.2642), -- Closet Coords
                        manage = vec3(-743.4568, -2256.1355, 48.2642) -- Manage Panel Coords
                    }
                },
                [33] = {
                    roomId = "opium:room_03_09", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-756.8007, -2266.7710, 48.2642), -- Stash Open Coords
                        closet = vec3(-759.4273, -2267.3782, 48.2642), -- Closet Coords
                        manage = vec3(-759.1242, -2262.3230, 48.2642) -- Manage Panel Coords
                    }
                },
                [34] = {
                    roomId = "opium:room_03_10", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-755.4489, -2251.6013, 48.2642), -- Stash Open Coords
                        closet = vec3(-752.8504, -2251.2449, 48.2642), -- Closet Coords
                        manage = vec3(-753.1182, -2256.1096, 48.2642) -- Manage Panel Coords
                    }
                },
                [35] = {
                    roomId = "opium:room_03_11", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-766.4235, -2266.9709, 48.2642), -- Stash Open Coords
                        closet = vec3(-769.0836, -2267.4155, 48.2642), -- Closet Coords
                        manage = vec3(-768.6678, -2262.2756, 48.2642) -- Manage Panel Coords
                    }
                },
                [36] = {
                    roomId = "opium:room_03_12", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 48.2642, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-765.1474, -2251.4773, 48.2642), -- Stash Open Coords
                        closet = vec3(-762.4086, -2250.9431, 48.2642), -- Closet Coords
                        manage = vec3(-762.8463, -2256.1621, 48.2642) -- Manage Panel Coords
                    }
                },
                -- Fourth Floor
                [37] = {
                    roomId = "opium:room_04_01", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-694.9953, -2266.8650, 57.0353), -- Stash Open Coords
                        closet = vec3(-697.6282, -2267.4106, 57.0353), -- Closet Coords
                        manage = vec3(-697.3081, -2262.3376, 57.0353) -- Manage Panel Coords
                    }
                },
                [38] = {
                    roomId = "opium:room_04_02", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-693.6661, -2251.3464, 57.0353), -- Stash Open Coords
                        closet = vec3(-691.0878, -2251.0525, 57.0353), -- Closet Coords
                        manage = vec3(-691.4592, -2256.2378, 57.0353) -- Manage Panel Coords
                    }
                },
                [39] = {
                    roomId = "opium:room_04_03", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-685.2256, -2267.2251, 57.0353), -- Stash Open Coords
                        closet = vec3(-687.8805, -2267.3501, 57.0353), -- Closet Coords
                        manage = vec3(-687.5869, -2262.3501, 57.0353) -- Manage Panel Coords
                    }
                },
                [40] = {
                    roomId = "opium:room_04_04", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-683.9737, -2251.3977, 57.0353), -- Stash Open Coords
                        closet = vec3(-681.3541, -2251.0413, 57.0353), -- Closet Coords
                        manage = vec3(-681.5989, -2256.1636, 57.0353) -- Manage Panel Coords
                    }
                },
                [41] = {
                    roomId = "opium:room_04_05", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-675.5951, -2266.8557, 57.0353), -- Stash Open Coords
                        closet = vec3(-678.1630, -2267.5032, 57.0353), -- Closet Coords
                        manage = vec3(-677.8339, -2262.3169, 57.0353) -- Manage Panel Coords
                    }
                },
                [42] = {
                    roomId = "opium:room_04_06", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-674.3085, -2251.4736, 57.0353), -- Stash Open Coords
                        closet = vec3(-671.6921, -2250.9485, 57.0353), -- Closet Coords
                        manage = vec3(-672.0353, -2256.1667, 57.0353) -- Manage Panel Coords
                    }
                },
                [43] = {
                    roomId = "opium:room_04_07", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-747.1108, -2266.7771, 57.0353), -- Stash Open Coords
                        closet = vec3(-749.7150, -2267.3704, 57.0353), -- Closet Coords
                        manage = vec3(-749.4255, -2262.3677, 57.0353) -- Manage Panel Coords
                    }
                },
                [44] = {
                    roomId = "opium:room_04_08", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-745.7385, -2251.5837, 57.0353), -- Stash Open Coords
                        closet = vec3(-743.1751, -2250.9968, 57.0353), -- Closet Coords
                        manage = vec3(-743.4568, -2256.1355, 57.0353) -- Manage Panel Coords
                    }
                },
                [45] = {
                    roomId = "opium:room_04_09", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-756.8007, -2266.7710, 57.0353), -- Stash Open Coords
                        closet = vec3(-759.4273, -2267.3782, 57.0353), -- Closet Coords
                        manage = vec3(-759.1242, -2262.3230, 57.0353) -- Manage Panel Coords
                    }
                },
                [46] = {
                    roomId = "opium:room_04_10", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-755.4489, -2251.6013, 57.0353), -- Stash Open Coords
                        closet = vec3(-752.8504, -2251.2449, 57.0353), -- Closet Coords
                        manage = vec3(-753.1182, -2256.1096, 57.0353) -- Manage Panel Coords
                    }
                },
                [47] = {
                    roomId = "opium:room_04_11", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-766.4235, -2266.9709, 57.0353), -- Stash Open Coords
                        closet = vec3(-769.0836, -2267.4155, 57.0353), -- Closet Coords
                        manage = vec3(-768.6678, -2262.2756, 57.0353) -- Manage Panel Coords
                    }
                },
                [48] = {
                    roomId = "opium:room_04_12", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 57.0353, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-765.1474, -2251.4773, 57.0353), -- Stash Open Coords
                        closet = vec3(-762.4086, -2250.9431, 57.0353), -- Closet Coords
                        manage = vec3(-762.8463, -2256.1621, 57.0353) -- Manage Panel Coords
                    }
                },
                -- Fifth Floor
                [49] = {
                    roomId = "opium:room_05_01", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-694.9953, -2266.8650, 65.8048), -- Stash Open Coords
                        closet = vec3(-697.6282, -2267.4106, 65.8048), -- Closet Coords
                        manage = vec3(-697.3081, -2262.3376, 65.8048) -- Manage Panel Coords
                    }
                },
                [50] = {
                    roomId = "opium:room_05_02", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-693.6661, -2251.3464, 65.8048), -- Stash Open Coords
                        closet = vec3(-691.0878, -2251.0525, 65.8048), -- Closet Coords
                        manage = vec3(-691.4592, -2256.2378, 65.8048) -- Manage Panel Coords
                    }
                },
                [51] = {
                    roomId = "opium:room_05_03", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-685.2256, -2267.2251, 65.8048), -- Stash Open Coords
                        closet = vec3(-687.8805, -2267.3501, 65.8048), -- Closet Coords
                        manage = vec3(-687.5869, -2262.3501, 65.8048) -- Manage Panel Coords
                    }
                },
                [52] = {
                    roomId = "opium:room_05_04", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-683.9737, -2251.3977, 65.8048), -- Stash Open Coords
                        closet = vec3(-681.3541, -2251.0413, 65.8048), -- Closet Coords
                        manage = vec3(-681.5989, -2256.1636, 65.8048) -- Manage Panel Coords
                    }
                },
                [53] = {
                    roomId = "opium:room_05_05", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-675.5951, -2266.8557, 65.8048), -- Stash Open Coords
                        closet = vec3(-678.1630, -2267.5032, 65.8048), -- Closet Coords
                        manage = vec3(-677.8339, -2262.3169, 65.8048) -- Manage Panel Coords
                    }
                },
                [54] = {
                    roomId = "opium:room_05_06", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-674.3085, -2251.4736, 65.8048), -- Stash Open Coords
                        closet = vec3(-671.6921, -2250.9485, 65.8048), -- Closet Coords
                        manage = vec3(-672.0353, -2256.1667, 65.8048) -- Manage Panel Coords
                    }
                },
                [55] = {
                    roomId = "opium:room_05_07", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-747.1108, -2266.7771, 65.8048), -- Stash Open Coords
                        closet = vec3(-749.7150, -2267.3704, 65.8048), -- Closet Coords
                        manage = vec3(-749.4255, -2262.3677, 65.8048) -- Manage Panel Coords
                    }
                },
                [56] = {
                    roomId = "opium:room_05_08", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-745.7385, -2251.5837, 65.8048), -- Stash Open Coords
                        closet = vec3(-743.1751, -2250.9968, 65.8048), -- Closet Coords
                        manage = vec3(-743.4568, -2256.1355, 65.8048) -- Manage Panel Coords
                    }
                },
                [57] = {
                    roomId = "opium:room_05_09", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-756.8007, -2266.7710, 65.8048), -- Stash Open Coords
                        closet = vec3(-759.4273, -2267.3782, 65.8048), -- Closet Coords
                        manage = vec3(-759.1242, -2262.3230, 65.8048) -- Manage Panel Coords
                    }
                },
                [58] = {
                    roomId = "opium:room_05_10", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-755.4489, -2251.6013, 65.8048), -- Stash Open Coords
                        closet = vec3(-752.8504, -2251.2449, 65.8048), -- Closet Coords
                        manage = vec3(-753.1182, -2256.1096, 65.8048) -- Manage Panel Coords
                    }
                },
                [59] = {
                    roomId = "opium:room_05_11", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-766.4235, -2266.9709, 65.8048), -- Stash Open Coords
                        closet = vec3(-769.0836, -2267.4155, 65.8048), -- Closet Coords
                        manage = vec3(-768.6678, -2262.2756, 65.8048) -- Manage Panel Coords
                    }
                },
                [60] = {
                    roomId = "opium:room_05_12", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 65.8048, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-765.1474, -2251.4773, 65.8048), -- Stash Open Coords
                        closet = vec3(-762.4086, -2250.9431, 65.8048), -- Closet Coords
                        manage = vec3(-762.8463, -2256.1621, 65.8048) -- Manage Panel Coords
                    }
                },
                -- Sixth Floor 
                [61] = {
                    roomId = "opium:room_06_01", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-694.9953, -2266.8650, 74.6509), -- Stash Open Coords
                        closet = vec3(-697.6282, -2267.4106, 74.6509), -- Closet Coords
                        manage = vec3(-697.3081, -2262.3376, 74.6509) -- Manage Panel Coords
                    }
                },
                [62] = {
                    roomId = "opium:room_06_02", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-693.6661, -2251.3464, 74.6509), -- Stash Open Coords
                        closet = vec3(-691.0878, -2251.0525, 74.6509), -- Closet Coords
                        manage = vec3(-691.4592, -2256.2378, 74.6509) -- Manage Panel Coords
                    }
                },
                [63] = {
                    roomId = "opium:room_06_03", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-685.2256, -2267.2251, 74.6509), -- Stash Open Coords
                        closet = vec3(-687.8805, -2267.3501, 74.6509), -- Closet Coords
                        manage = vec3(-687.5869, -2262.3501, 74.6509) -- Manage Panel Coords
                    }
                },
                [64] = {
                    roomId = "opium:room_06_04", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-683.9737, -2251.3977, 74.6509), -- Stash Open Coords
                        closet = vec3(-681.3541, -2251.0413, 74.6509), -- Closet Coords
                        manage = vec3(-681.5989, -2256.1636, 74.6509) -- Manage Panel Coords
                    }
                },
                [65] = {
                    roomId = "opium:room_06_05", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-675.5951, -2266.8557, 74.6509), -- Stash Open Coords
                        closet = vec3(-678.1630, -2267.5032, 74.6509), -- Closet Coords
                        manage = vec3(-677.8339, -2262.3169, 74.6509) -- Manage Panel Coords
                    }
                },
                [66] = {
                    roomId = "opium:room_06_06", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-674.3085, -2251.4736, 74.6509), -- Stash Open Coords
                        closet = vec3(-671.6921, -2250.9485, 74.6509), -- Closet Coords
                        manage = vec3(-672.0353, -2256.1667, 74.6509) -- Manage Panel Coords
                    }
                },
                [67] = {
                    roomId = "opium:room_06_07", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-747.1108, -2266.7771, 74.6509), -- Stash Open Coords
                        closet = vec3(-749.7150, -2267.3704, 74.6509), -- Closet Coords
                        manage = vec3(-749.4255, -2262.3677, 74.6509) -- Manage Panel Coords
                    }
                },
                [68] = {
                    roomId = "opium:room_06_08", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-745.7385, -2251.5837, 74.6509), -- Stash Open Coords
                        closet = vec3(-743.1751, -2250.9968, 74.6509), -- Closet Coords
                        manage = vec3(-743.4568, -2256.1355, 74.6509) -- Manage Panel Coords
                    }
                },
                [69] = {
                    roomId = "opium:room_06_09", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-756.8007, -2266.7710, 74.6509), -- Stash Open Coords
                        closet = vec3(-759.4273, -2267.3782, 74.6509), -- Closet Coords
                        manage = vec3(-759.1242, -2262.3230, 74.6509) -- Manage Panel Coords
                    }
                },
                [70] = {
                    roomId = "opium:room_06_10", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-755.4489, -2251.6013, 74.6509), -- Stash Open Coords
                        closet = vec3(-752.8504, -2251.2449, 74.6509), -- Closet Coords
                        manage = vec3(-753.1182, -2256.1096, 74.6509) -- Manage Panel Coords
                    }
                },
                [71] = {
                    roomId = "opium:room_06_11", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-766.4235, -2266.9709, 74.6509), -- Stash Open Coords
                        closet = vec3(-769.0836, -2267.4155, 74.6509), -- Closet Coords
                        manage = vec3(-768.6678, -2262.2756, 74.6509) -- Manage Panel Coords
                    }
                },
                [72] = {
                    roomId = "opium:room_06_12", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-720.3113, -2288.0381, 74.6509, 1.0806), -- Spawn Selector Spawn Coords
                        stash = vec3(-765.1474, -2251.4773, 74.6509), -- Stash Open Coords
                        closet = vec3(-762.4086, -2250.9431, 74.6509), -- Closet Coords
                        manage = vec3(-762.8463, -2256.1621, 74.6509) -- Manage Panel Coords
                    }
                },
            }
        },
        [2] = {
            name = "South Seas Motel",
            centerCoord = vec3(-161.3410, 6420.4141, 36.8160), -- Make Sure it's center of property or MLO building
            blipData = {
                coords = vec3(-149.1464, 6433.0728, 31.9160), -- Make Sure it's entrance area for better navigation
            },
            reception = {
                coords = vec4(-150.45257568359, 6425.4790039062, 31.914045333862, 313.2897),
                model = `U_M_Y_Ushi`,
                ped = nil,
                
            },
            -- 6 floors 12 rooms each
            -- motelName:room_floorNum_roomNum
            rooms = {
                -- First Floor
                [1] = {
                    roomId = "sseas:room_01_01", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-165.4269, 6440.5396, 31.9146, 317.9433), -- Spawn Selector Spawn Coords
                        stash = vec3(-163.5278, 6438.4043, 31.9146), -- Stash Open Coords
                        closet = vec3(-160.9471, 6443.5571, 31.9146), -- Closet Coords
                        manage = vec3(-161.2357, 6439.9521, 31.9146) -- Manage Panel Coords
                    }
                },
                [2] = {
                    roomId = "sseas:room_01_02", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-159.0030, 6433.9243, 31.9155, 322.6914), -- Spawn Selector Spawn Coords
                        stash = vec3(-161.1865, 6436.2061, 31.9155), -- Stash Open Coords
                        closet = vec3(-155.9633, 6438.2803, 31.9155), -- Closet Coords
                        manage = vec3(-159.5606, 6438.3447, 31.9155) -- Manage Panel Coords
                    }
                },
                [3] = {
                    roomId = "sseas:room_01_03", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-148.3772, 6423.6743, 31.9126, 308.9936), -- Spawn Selector Spawn Coords
                        stash = vec3(-146.4091, 6421.2866, 31.9126), -- Stash Open Coords
                        closet = vec3(-143.9971, 6426.5469, 31.9126), -- Closet Coords
                        manage = vec3(-144.2566, 6422.9736, 31.9126) -- Manage Panel Coords
                    }
                },
                [4] = {
                    roomId = "sseas:room_01_04", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-148.8065, 6414.5850, 31.9126, 227.4691), -- Spawn Selector Spawn Coords
                        stash = vec3(-151.4873, 6412.4272, 31.9126), -- Stash Open Coords
                        closet = vec3(-146.2100, 6410.5186, 31.9126), -- Closet Coords
                        manage = vec3(-149.6613, 6410.5078, 31.9126) -- Manage Panel Coords
                    }
                },
                [5] = {
                    roomId = "sseas:room_01_05", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-155.0855, 6407.9668, 31.9099, 228.3808), -- Spawn Selector Spawn Coords
                        stash = vec3(-153.3619, 6410.4932, 31.9099), -- Stash Open Coords
                        closet = vec3(-151.2528, 6405.3345, 31.9099), -- Closet Coords
                        manage = vec3(-151.2651, 6408.8779, 31.9099) -- Manage Panel Coords
                    }
                },
                [6] = {
                    roomId = "sseas:room_01_06", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-166.2576, 6410.4907, 31.9147, 142.6559), -- Spawn Selector Spawn Coords
                        stash = vec3(-163.5563, 6408.6489, 31.9147), -- Stash Open Coords
                        closet = vec3(-168.9394, 6406.7134, 31.9147), -- Closet Coords
                        manage = vec3(-165.6818, 6406.9995, 31.9147) -- Manage Panel Coords
                    }
                },
                [7] = {
                    roomId = "sseas:room_01_07", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-165.2232, 6440.6675, 36.1705, 314.9888), -- Spawn Selector Spawn Coords
                        stash = vec3(-163.3815, 6438.2192, 36.1705), -- Stash Open Coords
                        closet = vec3(-161.3796, 6443.0542, 36.1705), -- Closet Coords
                        manage = vec3(-161.4850, 6440.2114, 36.1705) -- Manage Panel Coords
                    }
                },
                [8] = {
                    roomId = "sseas:room_01_08", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-158.6139, 6434.2646, 36.1739, 317.6125), -- Spawn Selector Spawn Coords
                        stash = vec3(-161.3564, 6436.3345, 36.1739), -- Stash Open Coords
                        closet = vec3(-156.1951, 6437.9697, 36.1739), -- Closet Coords
                        manage = vec3(-159.1548, 6437.9263, 36.1739) -- Manage Panel Coords
                    }
                },
                [9] = {
                    roomId = "sseas:room_01_09", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-148.9306, 6424.3755, 36.1818, 318.8585), -- Spawn Selector Spawn Coords
                        stash = vec3(-151.3153, 6426.3540, 36.1818), -- Stash Open Coords
                        closet = vec3(-146.2442, 6428.2007, 36.1818), -- Closet Coords
                        manage = vec3(-149.2308, 6427.9849, 36.1818) -- Manage Panel Coords
                    }
                },
                [10] = {
                    roomId = "sseas:room_01_10", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-148.7104, 6414.5308, 36.1682, 225.4420), -- Spawn Selector Spawn Coords
                        stash = vec3(-151.3205, 6412.5679, 36.1682), -- Stash Open Coords
                        closet = vec3(-146.6470, 6410.7808, 36.1682), -- Closet Coords
                        manage = vec3(-149.2369, 6410.7524, 36.1682) -- Manage Panel Coords
                    }
                },
                [11] = {
                    roomId = "sseas:room_01_11", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-155.2922, 6407.9062, 36.1668, 228.2986), -- Spawn Selector Spawn Coords
                        stash = vec3(-153.3349, 6410.5220, 36.1668), -- Stash Open Coords
                        closet = vec3(-151.7599, 6405.6152, 36.1668), -- Closet Coords
                        manage = vec3(-151.3083, 6408.8379, 36.1668) -- Manage Panel Coords
                    }
                },
                [12] = {
                    roomId = "sseas:room_01_12", -- Must be Unique, Match DB and LockId
                    roomPrice = 1000, -- Per Day Rent
                    roomData = {
                        spawn = vec4(-164.2260, 6408.8838, 36.1489, 134.1814), -- Spawn Selector Spawn Coords
                        stash = vec3(-166.2021, 6411.3687, 36.1489), -- Stash Open Coords
                        closet = vec3(-168.2194, 6406.5049, 36.1489), -- Closet Coords
                        manage = vec3(-168.1263, 6409.5352, 36.1489) -- Manage Panel Coords
                    }
                },
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
        -- Match the pattern after the colon (:) and extract floor and room
        local floor, room = roomId:match(":%w+_(%d+)_(%d+)")
        
        -- Return the extracted values as numbers
        return 'Floor : '..floor..' | Room : '..room
    end
}