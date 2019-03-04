-- Connecting libs
RFTlib = 
{
	graphics = require("libraries.graphicslib")
}

-- Requires
require("prototypes.entity.entities")
require("prototypes.fluid.fluids")
require("prototypes.item.items")
require("prototypes.item.resources")
require("prototypes.recipe.machines")
require("prototypes.recipe.resources")

-- Crafting categories
data:extend({
	{
		type = "fuel-category",
		name = "infinity"
	},
	{
		type = "recipe-category",
		name = "RFT-smelting"
	},
	{
		type = "recipe-category",
		name = "RFT-casting"
	},
	{
		type = "recipe-category",
		name = "RFT-alloying"
	},
})

-- Test furnace
data:extend({
	--[[{
		type = "furnace",
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
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-0.8, -1}, {0.8, 1}},
		crafting_categories = {"smelting"},
		result_inventory_size = 1,
		energy_usage = "180kW",
		crafting_speed = 1,
		source_inventory_size = 1,
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
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
		animation =
		{
			layers =
			{
				{
					layers = 
					{
						{
							filename = "__RFTCore__/graphics/entity/stone-furnace/hr-stone-furnace-base.png",
							priority = "extra-high",
							width = 146,
							height = 151,
							frame_count = 1,
							shift = util.by_pixel(-0.25, 6),
							scale = 0.5
						},
						{
							filename = "__RFTCore__/graphics/entity/stone-furnace/hr-stone-furnace-mask-3.png",
							priority = "extra-high",
							width = 146,
							height = 151,
							frame_count = 1,
							tint = {r=1.0, b=1.0, g=0.0,},
							shift = util.by_pixel(-0.25, 6),
							scale = 0.5
						}
					}
				},
				{
					filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
					priority = "extra-high",
					width = 81,
					height = 64,
					frame_count = 1,
					draw_as_shadow = true,
					shift = {0.515625, 0.0625},
					hr_version =
					{
						filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
						priority = "extra-high",
						width = 164,
						height = 74,
						frame_count = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(14.5, 13),
						scale = 0.5
					}
				}
			}
		},
		working_visualisations =
		{
			{
				north_position = {0.0, 0.0},
				east_position = {0.0, 0.0},
				south_position = {0.0, 0.0},
				west_position = {0.0, 0.0},
				animation =
				{
					filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
					priority = "extra-high",
					line_length = 8,
					width = 20,
					height = 49,
					frame_count = 48,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(2, 5.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
						priority = "extra-high",
						line_length = 8,
						width = 41,
						height = 100,
						frame_count = 48,
						axially_symmetrical = false,
						direction_count = 1,
						shift = util.by_pixel(-0.75, 5.5),
						scale = 0.5
					}
				},
				light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
			}
		},
		fast_replaceable_group = "furnace"
	},]]
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
		name = "example-furnace",
		icon = "__base__/graphics/icons/stone-furnace.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "smelting-machine",
		order = "a[stone-furnace]",
		place_result = "example-furnace",
		stack_size = 50
	}
})
