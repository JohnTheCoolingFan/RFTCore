-- A library that includes functions to make materials, such as metals, and unified recipes for them
local materiallib

-- materiallib.add_metal
--   Adds metal material, with proper naming, durations and categories, based on input characteristics
materiallib.add_metal = function(parameters)
    local output = {
        {
            type = "recipe",
            name = parameters.name.."-melting",
            ingredients = {{parameters.prototypes.item, parametrs.prototypes.item_to_fluid[1]}},
            results = {{type = "fluid", name = parameters.prototypes.fluid, amount = parameters.prototypes.item_to_fluid[2]}},
            energy_required = math.ceil(parameters.heat_capacity * parameters.melting_temperature / 80000 * settings.startup["RFT-metal-melting-time-modifier"]) * 10
        },
        {
            type = "recipe",
            name = "molten-"..parameters.name.."-casting",
            category = "RFT-metal-casting",
            ingredients = {{type = "fluid", name = parameters.prototypes.fluid, amount = parameters.prototypes.item_to_fluid[2]}},
            result = parameters.prototypes.item,
            result_count = parameters.prototypes.item_to_fluid[1],
            energy_required = math.ceil(parameters.heat_capacity * parameters.melting_temperature / 80000 * settings.startup["RFT-metal-melting-time-modifier"]) * 10
        }
    }

    -- Melting category
    if parameters.melting_temperature < settings.startup["RFT-metal-melting-t1-max-temperature"].value then
        output[1].category = "RFT-metal-melting-t1"
    elseif parameters.melting_temperature < settings.startup["RFT-metal-melting-t2-max-temperature"].value then
        output[1].category = "RFT-metal-melting-t2"
    elseif parameters.melting_temperature < settings.startup["RFT-metal-melting-t3-max-temperature"].value then
        output[1].category = "RFT-metal-melting-t3"
    else
        output[1].category = "RFT-metal-melting-t4"
    end

    data:extend(output)
end

-- Just example
local metal_example = {
    name = "iron",
    heat_capacity = 450, -- J / (kg * degree (Celsius))
    melting_temperature = 1538, -- Celsius
    prototypes = {
        item = "iron-plate",
        fluid = "molten-iron",
        item_to_fluid = {5, 500} -- How much molten metal ([2]) you will get for [1] item
    }
}
-- Possible change to format: multiple items associated with material, each with its mass.

return materiallib
