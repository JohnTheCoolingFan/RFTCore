-- A library that includes functions to make materials, such as metals, and unified recipes for them
local materiallib

materiallib.add_metal = function(parameters)

end

local metal_example = {
    name = "iron",
    heat_capacity = 450, -- J / (kg * degree (Celsius))
    melting_temperature = 1538, -- Celsius
    prototypes = {
        item = "iron-plate",
        fluid = "molten-iron",
        item-to-fluid = 50 -- How much molten metal you will get for 1 item
    },
}

return materiallib
