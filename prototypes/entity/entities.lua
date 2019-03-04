data:extend({
	{
		type = "assembling-machine",
		name = "RFT-burner-smeltery-1",
		icon = "__base__/graphics/icons/stone-furnace.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "RFT-burner-smeltery-1"},
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
		crafting_categories = {"RFT-smelting"},
		energy_usage = "180kW",
		crafting_speed = 0.5,
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
		animation = make_4way_animation_from_spritesheet({ layers =
		{
			{
				filename = "__RFTCore__/graphics/entity/fluid-furnace/fluid-furnace-1-1.png",
				width = 78,
				height = 73,
				frame_count = 1,
				shift = util.by_pixel(4, 4),
				hr_version = {
					filename = "__RFTCore__/graphics/entity/fluid-furnace/hr-fluid-furnace-1-1.png",
					width = 157,
					height = 146,
					frame_count = 1,
					shift = util.by_pixel(8, 8),
					scale = 0.5
				},
			}
		}
		}),
		fast_replaceable_group = "RFT-burner-smeltery",
		fluid_boxes =
		{
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {0.5, -1.5} }}
			}
		},
		ingredient_count = 1,
	},
	{
		type = "assembling-machine",
		name = "RFT-burner-smeltery-2",
		icon = "__base__/graphics/icons/stone-furnace.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "RFT-burner-smeltery-2"},
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
		crafting_categories = {"RFT-smelting"},
		energy_usage = "180kW",
		crafting_speed = 0.7,
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
		animation = make_4way_animation_from_spritesheet({ layers =
		{
			{
				filename = "__RFTCore__/graphics/entity/fluid-furnace/fluid-furnace-1-2.png",
				width = 78,
				height = 73,
				frame_count = 1,
				shift = util.by_pixel(0, 0),
				hr_version = {
					filename = "__RFTCore__/graphics/entity/fluid-furnace/hr-fluid-furnace-1-2.png",
					width = 157,
					height = 146,
					frame_count = 1,
					shift = util.by_pixel(0, 0),
					scale = 0.5
				},
			}
		}
		}),
		fast_replaceable_group = "RFT-burner-smeltery",
		fluid_boxes =
		{
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {0.5, -1.5} }}
			}
		},
		ingredient_count = 1,
	},
	{
		type = "assembling-machine",
		name = "RFT-stone-casting-machine",
		icon = "__base__/graphics/icons/stone-furnace.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "RFT-stone-casting-machine"},
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
		animation = make_4way_animation_from_spritesheet({ layers =
		{
			{
				filename = "__RFTCore__/graphics/entity/fluid-furnace/fluid-furnace-1-5.png",
				width = 78,
				height = 73,
				frame_count = 1,
				hr_version = {
					filename = "__RFTCore__/graphics/entity/fluid-furnace/hr-fluid-furnace-1-5.png",
					width = 157,
					height = 146,
					frame_count = 1,
					scale = 0.5
				},
			}
		}
		}),
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
	}
})
