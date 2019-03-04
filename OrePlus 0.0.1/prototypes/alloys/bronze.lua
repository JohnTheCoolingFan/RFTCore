data:extend({
	--fluid
	{
    type = "fluid",
    name = "JC-molten-bronze",
    default_temperature = 100,
    max_temperature = 500,
    heat_capacity = "0KJ",
    base_color = {r=0.8, g=0.5, b=0.2},
    flow_color = {r=0.8, g=0.5, b=0.2},
    icon = "__OrePlus__/graphics/icons/fluid/JC-molten-bronze.png",
    order = "a[fluid]-a[bronze]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
	},
	--ingot
	{
    type = "item",
    name = "JC-bronze-ingot",
    icon = "__OrePlus__/graphics/icons/JC-bronze-ingot.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "JC-resource",
    order = "a[ingot]-g[bronze]",
    stack_size = 50
	},
	--recipes
	{
		type = "recipe",
		name = "JC-bronze-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-bronze.png",
		category = "JC-smelting",
		subgroup = "bronze",
		enabled = true,
		ingredients = {
		{"JC-bronze-ingot", 1}
		},
		results = {{type="fluid", name="JC-molten-bronze", amount=10}}
	},
	{
		type = "recipe",
		name = "JC-bronze-casting",
		icon = "__OrePlus__/graphics/icons/recipe/JC-bronze-casting.png",
		category = "JC-casting",
		subgroup = "bronze",
		enabled = true,
		ingredients = {
		{type="fluid", name="JC-molten-bronze", amount=10}
		},
		result = "JC-bronze-ingot"
	},
	--alloy recipe
	{
		type = "recipe",
		name = "JC-bronze-alloy",
		icon = "__OrePlus__/graphics/icons/JC-bronze-ingot.png",
		category = "JC-smelting",
		subgroup = "bronze",
		enabled = true,
		ingredients = {
		{type="item", name="JC-tin-ingot", amount=1},
		{type="item", name="copper-plate", amount=2}
		},
		results = {{type="fluid", name="JC-molten-bronze", amount=30}}
	},
})