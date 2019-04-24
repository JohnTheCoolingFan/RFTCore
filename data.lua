-- Connecting libs
RFTlib =
{
	graphics = require("libraries.graphicslib"),
	material = require("libraries.material")
}

-- Requires
require("prototypes.categories.recipe-category")
require("prototypes.entity.entities")
require("prototypes.fluid.fluids")
require("prototypes.item.items")
require("prototypes.item.resources")
require("prototypes.recipe.machines")
require("prototypes.recipe.resources")

-- Test furnace
data:extend({
	{
		type = "assembling-machine",
		name = "example-furnace",
		icon = "__base__/graphics/icons/stone-furnace.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "example-furnace"},
		max_health = 200,
		corpse = "medium-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		working_sound =
		{
			sound = { filename = "__base__/sound/furnace.ogg", }
		},
		resistances =
		{
			{
				type = "fire",
				percent = 90
			},
			{
				type = "explosion",
				percent = 30
			},
			{
				type = "impact",
				percent = 30
			}
		},
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
		crafting_categories = {"RFT-casting"},
		energy_usage = "0.001W",
		crafting_speed = 0.25,
		energy_source =
		{
			type = "burner",
			fuel_category = "infinity",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions = 0.01,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 5,
					position = {0.0, -0.8},
					starting_vertical_speed = 0.08,
					starting_frame_deviation = 60
				}
			}
		},
		animation = RFTlib.graphics.fluid_furnace_spritesheet({r=0.6,g=0.7,b=0.2}),
		fast_replaceable_group = "RFT-burner-casting",
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {0.5, -1.5} }}
			}
		},
		ingredient_count = 1,
	},
	{
		type = "item",
		name = "example-item",
		icon = "__base__/graphics/icons/nuclear-fuel-reprocessing.png",
		--icons = RFTlib.graphics.sprite_with_arrow({"__RFTCore__/graphics/icons/RFTC.png", "__RFTCore__/graphics/icons/slag.png"}, {"__RFTCore__/graphics/icons/slag.png", "__RFTCore__/graphics/icons/RFTC.png"}),
		icon_size = 32,
		flags = {},
		subgroup = "smelting-machine",
		order = "a[stone-furnace]",
		place_result = "example-furnace",
		stack_size = 50
	},
	{
		type = "item",
		name = "example-furnace",
		icons = RFTlib.graphics.sprite_with_arrow({"__RFTCore__/graphics/icons/RFTC.png", "__RFTCore__/graphics/icons/slag.png"}, {"__RFTCore__/graphics/icons/slag.png", "__RFTCore__/graphics/icons/RFTC.png"}),
		icon_size = 32,
		flags = {},
		subgroup = "smelting-machine",
		order = "a[stone-furnace]",
		place_result = "example-furnace",
		stack_size = 50
	}
})
