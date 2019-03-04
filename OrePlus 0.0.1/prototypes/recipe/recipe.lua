data:extend({
--smelting
	{
		type = "recipe",
		name = "JC-iron-ore-smelting",
		icon = "__JohnCore__/graphics/icon/fluid/JC-molten-iron.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"iron-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-iron", amount=10}, {type="item", name="JC-slag", amount = 1}}
	},
	
	{
		type = "recipe",
		name = "JC-copper-ore-smelting",
		icon = "__JohnCore__/graphics/icon/fluid/JC-molten-copper.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"copper-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-copper", amount=10}, {type="item", name="JC-slag", amount=1}}
	},
	
	{
		type = "recipe",
		name = "JC-gold-ore-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-gold.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"JC-gold-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-gold", amount=10}, {type="item", name="JC-slag", amount = 1}}
	},
	
	{
		type = "recipe",
		name = "JC-nickel-ore-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-nickel.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"JC-nickel-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-nickel", amount=10}, {type="item", name="JC-slag", amount = 1}}
	},
	
	{
		type = "recipe",
		name = "JC-silver-ore-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-silver.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"JC-silver-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-silver", amount=10}, {type="item", name="JC-slag", amount = 1}}
	},
	
	{
		type = "recipe",
		name = "JC-tin-ore-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-tin.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"JC-tin-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-tin", amount=10}, {type="item", name="JC-slag", amount = 1}}
	},
	
	{
		type = "recipe",
		name = "JC-zinc-ore-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-zinc.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"JC-zinc-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-zinc", amount=10}, {type="item", name="JC-slag", amount = 1}}
	},
	
	{
		type = "recipe",
		name = "JC-lead-ore-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-lead.png",
		category = "JC-smelting",
		subgroup = "JC-ore-smelting",
		enabled = true,
		ingredients = {
		{"JC-lead-ore", 1}
		},
		results = {{type="fluid", name="JC-molten-lead", amount=10}, {type="item", name="JC-slag", amount = 1}}
	},
})