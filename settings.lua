data:extend({
    {
        name = "RFT-metal-melting-t1-max-temperature",
        type = "int-setting",
        setting_type = "startup",
        default_value = 1100, -- Copper melting IRL
        minimal_value = 100 -- Water boiling
    },
    {
        name = "RFT-metal-melting-t2-max-temperature",
        type = "int-setting",
        setting_type = "startup",
        default_value = 1600, -- Iron melting IRL
        minimal_value = 100 -- Water boiling
    }
    {
        name = "RFT-metal-melting-t3-max-temperature",
        type = "int-setting",
        setting_type = "startup",
        default_value = 3500, -- Tungsten melting IRL
        minimal_value = 100 -- Water boiling
    }
})
