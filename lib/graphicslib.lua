-- A library that includes functions for easy graphics assigning

local graphicslib = {}

graphicslib.fluid_furnace_spritesheet = function(furnace_color)
    local shiftvalue = {0.515625, 0.0625}          -- Shift value for lr (may be useless in 0.18)
    local hr_shiftvalue = util.by_pixel(0.25, 4.5) -- Shift value for hr
    local output = {}
    local furnace_base = {
        filename = "__RFTCore__/graphics/entity/stone-furnace/hr-stone-furnace-base.png",
        priority = "high",
        width = 151,
        height = 146,
        frame_count = 1,
        line_length = 1,
        shift = hr_shiftvalue,
        scale = 0.5
    }
    local furnace_mask = {
        filename = "__RFTCore__/graphics/entity/stone-furnace/hr-stone-furnace-mask-3.png",
        priority = "high",
        width = 151,
        height = 146,
        frame_count = 1,
        line_length = 1,
        shift = hr_shiftvalue,
        scale = 0.5,
        tint = furnace_color
    }
    local pipe_north = {
        filename = "__RFTCore__/graphics/entity/fluid-furnace/hr-fluid-furnace-pipe-up.png",
        priority = "high",
        width = 151,
        height = 146,
        frame_count = 1,
        line_length = 1,
        shift = hr_shiftvalue,
        scale = 0.5
    }
    local pipe_south = {
        filename = "__RFTCore__/graphics/entity/fluid-furnace/hr-fluid-furnace-pipe-down.png",
        priority = "high",
        width = 151,
        height = 146,
        frame_count = 1,
        line_length = 1,
        shift = hr_shiftvalue,
        scale = 0.5
    }
    local pipe_west = {
        filename = "__RFTCore__/graphics/entity/fluid-furnace/hr-fluid-furnace-pipe-left.png",
        priority = "high",
        width = 151,
        height = 146,
        frame_count = 1,
        line_length = 1,
        shift = hr_shiftvalue,
        scale = 0.5
    }
    local pipe_east = {
        filename = "__RFTCore__/graphics/entity/fluid-furnace/hr-fluid-furnace-pipe-right.png",
        priority = "high",
        width = 151,
        height = 146,
        frame_count = 1,
        line_length = 1,
        shift = hr_shiftvalue,
        scale = 0.5
    }
    output.north = {
        layers = {
            pipe_north,
            furnace_base,
            furnace_mask
        }
    }
    output.south = {
        layers = {
            furnace_base,
            furnace_mask,
            pipe_south
        }
    }
    output.west = {
        layers = {
            pipe_west,
            furnace_base,
            furnace_mask
        }
    }
    output.east = {
        layers = {
            furnace_base,
            furnace_mask,
            pipe_east
        }
    }
    return output
end

graphicslib.sprite_with_arrow = function(input_sprites, output_sprites)
    local input_result = {}
    local output_result = {}
    if #input_sprites == 1 then
        input_result =
        {
            {
                icon = input_sprites[1],
                shift = {-6, -7},
                scale = 0.5
            }
        }
    elseif #input_sprites == 2 then
        input_result =
        {
            {
                icon = input_sprites[1],
                shift = {-6 - 2, -7 + 1},
                scale = 0.4
            },
            {
                icon = input_sprites[2],
                shift = {-6 + 2, -7 - 1},
                scale = 0.4
            }
        }
    elseif #input_sprites == 3 then
        input_result =
        {
            {
                icon = input_sprites[1],
                shift = {-6 - 2, -7 + 1},
                scale = 0.3
            },
            {
                icon = input_sprites[2],
                shift = {-6, -7},
                scale = 0.3
            },
            {
                icon = input_sprites[3],
                shift = {-6 - 2, -7 - 1},
                scale = 0.3
            }
        }
    elseif #input_sprites == 4 then
        input_result =
        {
            {
                icon = input_sprites[1],
                shift = {-6 - 2, -7},
                scale = 0.3
            },
            {
                icon = input_sprites[2],
                shift = {-6 - 0.75, -7 + 1},
                scale = 0.3
            },
            {
                icon = input_sprites[3],
                shift = {-6 + 0.75, -7 - 1},
                scale = 0.3
            },
            {
                icon = input_sprites[4],
                shift = {-6 + 2, -7},
                scale = 0.3
            }
        }
    elseif #input_sprites == 5 then
        input_result =
        {
            {
                icon = input_sprites[1],
                shift = {-6 - 2.25, -7 + 0.25},
                scale = 0.2
            },
            {
                icon = input_sprites[2],
                shift = {-6 - 1, -7 + 1.25},
                scale = 0.2
            },
            {
                icon = input_sprites[3],
                shift = {-6 + 0.5, -7 - 0.75},
                scale = 0.2
            },
            {
                icon = input_sprites[4],
                shift = {-6 + 1.75, -7 + 0.5},
                scale = 0.2
            },
            {
                icon = input_sprites[5],
                shift = {-6 + 2.25, -7},
                scale = 0.2
            }
        }
    end
    if #output_sprites == 1 then
        output_result =
        {
            {
                icon = input_sprites[1],
                shift = {6, 7},
                scale = 0.5
            }
        }
    elseif #output_sprites == 2 then
        output_result =
        {
            {
                icon = input_sprites[1],
                shift = {6 - 2, 7 + 1},
                scale = 0.4
            },
            {
                icon = input_sprites[2],
                shift = {6 + 2, 7 - 1},
                scale = 0.4
            }
        }
    elseif #input_sprites == 3 then
        output_result =
        {
            {
                icon = input_sprites[1],
                shift = {6 - 2, 7 + 1},
                scale = 0.3
            },
            {
                icon = input_sprites[2],
                shift = {6, 7},
                scale = 0.3
            },
            {
                icon = input_sprites[3],
                shift = {6 - 2, 7 - 1},
                scale = 0.3
            }
        }
    elseif #output_sprites == 4 then
        output_result =
        {
            {
                icon = input_sprites[1],
                shift = {6 - 2, 7},
                scale = 0.3
            },
            {
                icon = input_sprites[2],
                shift = {6 - 0.75, 7 + 1},
                scale = 0.3
            },
            {
                icon = input_sprites[3],
                shift = {6 + 0.75, 7 - 1},
                scale = 0.3
            },
            {
                icon = input_sprites[4],
                shift = {6 + 2, 7},
                scale = 0.3
            }
        }
    elseif #output_sprites == 5 then
        output_result =
        {
            {
                icon = input_sprites[1],
                shift = {6 - 2.25, 7 + 0.25},
                scale = 0.2
            },
            {
                icon = input_sprites[2],
                shift = {6 - 1, 7 + 1.25},
                scale = 0.2
            },
            {
                icon = input_sprites[3],
                shift = {6 + 0.5, 7 - 0.75,},
                scale = 0.2
            },
            {
                icon = input_sprites[4],
                shift = {6 + 1.75, 7 + 0.5},
                scale = 0.2
            },
            {
                icon = input_sprites[5],
                shift = {6 + 2.25, 7},
                scale = 0.2
            }
        }
    end
    local result = {}
    for index, sprite in pairs(input_result) do table.insert(result, sprite) end
    for index, sprite in pairs(output_result) do table.insert(result, sprite) end
    table.insert(result, {icon = "__RFTCore__/graphics/icons/arrow.png"})
    return result
end

return graphicslib
