if not NewOreProcessing then
--require("prototypes.category.categories")
require("prototypes.item.item")
require("prototypes.fluid.fluid")
require("prototypes.item.item-group")
require("prototypes.autoplace-controls")
require("prototypes.entity.resources")
require("prototypes.recipe.recipe")
require("prototypes.tile.noise-layers")
require("prototypes.alloys.alloy-data")
--require("prototypes.technology.technologies")

data.raw["recipe"]["iron-plate"].enabled = false 
data.raw["recipe"]["copper-plate"].enabled = false
end

--[[ FUNCTION IS NOT READY YET]]
function JCalloy(name, ingr1, cnt1, ingr2, cnt2, color)
	local retitem = {
		type = "item",
		name = "JC-" .. name .. "-ingot",
		icon = "__OrePlus__/graphics/icons/JC-" .. name .. "-ingot.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "JC-resource",
		order = "a[ingot]-x[" .. name .. "]",
		stack_size = 50
	}
	local resltcnt = (cnt1 + cnt2) * 10
	local retrecipe = {
		type = "recipe",
		name = "JC-" .. name .. "-alloy",
		icon = "__OrePlus__/graphics/icon/fluid/JC-molten-" .. name .. ".png",
		category = "JC-smelting",
		subgroup = "custom-alloy",
		enabled = true,
		ingredients = {
		{type="item", name=ingr1, amount=cnt1},
		{type="item", name=ingr2, amount=cnt2}
		},
		results = {{type="fluid", name="JC-molten-" .. name, amount=resltcnt}}
	}
	local retfluid = {
		type = "fluid",
		name = "JC-molten-" .. name,
		default_temperature = 100,
		max_temperature = 500,
		heat_capacity = "0KJ",
		base_color = color,
		flow_color = color,
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-" .. name .. ".png",
		order = "a[fluid]-x[" .. name .. "]",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		auto_barrel = false
	}
	local retmolt = {
		type = "recipe",
		name = "JC-" .. name .. "-smelting",
		icon = "__OrePlus__/graphics/icons/fluid/JC-molten-" .. name .. ".png",
		category = "JC-smelting",
		subgroup = "custom-alloy",
		enabled = true,
		ingredients = {
		{"JC-" .. name .. "-ingot", 1}
		},
		results = {{type="fluid", name="JC-molten-" .. name, amount=10}}
	}
	local retcast = {
		type = "recipe",
		name = "JC-" .. name .. "-casting",
		icon = "__OrePlus__/graphics/icons/recipe/JC-" .. name .. "-casting.png",
		category = "JC-casting",
		subgroup = "custom-alloy",
		enabled = true,
		ingredients = {
		{type="fluid", name="JC-molten-" .. name, amount=10}
		},
		result = "JC-" .. name .. "-ingot"
	}
	return retitem, retrecipe, retfluid, retmolt, retcast
end
--[[ ]]
data:extend({
	JCalloy("brass", "copper-plate", 2, "JC-zinc-ingot", 1, {r=0.6, g=0.5, b=0.2}),
})