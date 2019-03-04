require "util"

-- Ideas
--[[
-- RailNetwork.
RailNetExample = {}                  -- Initialize lua table
RailNetExample.rail_entities = {     -- Example
	{"LuaEntity"},                   -- Rail LuaEntity instead of <"LuaEntity">
	{"Another LuaEntity"},
	{"3rd LuaEntity"},
	{"LuaEntity-4", {                -- When there are two ways.
			{"LuaEntity-way1"},
			{"LuaEntity-2-way1"}
		},
		{
			{"LuaEntity-1-way2"}
		}
	},
	{"LuaEntity-5"},                 -- Ways ended, continue.
	{"LuaEntity-last"}
}
RailNetExample.stop_signals = {
	"LuaEntity",                     -- Stop signals
	"Another LuaEntity. Not rail"
}
RailNetExample.energy_interfaces = { -- Idea related to Monorail mod.
	"LuaEntity, again",
	"Another one LuaEntity"
}
RailNetExample = nil                 -- Nullify to not mess up the RAM. Not part of idea
-- etc.

-- Ore/Resource Dictionary. Used only in data stage
JohnCoreDict = {}                                     -- Init.
JohnCoreDict.items = {
	["MOX-fuel-cell"] = {
		{                                             -- For example
			mod_name = "PlutoniumEnergy",
			mod_item_name = "MOX-fuel",
			prototype = "<prototype of this item>"
		},
		{                                             -- etc
			mod_name = "mod_name",
			mod_item_name = "item name",
			prototype = "<prototype>"
		}
	}                                                 -- etc
}                                                     -- etc
JohnCoreDict = nil                                    -- Nullify to not mess up the RAM. Not part of idea
-- END OF "Ideas"
-- ]]

-- JohnCore dictionary API creation
JohnCoreDict = {
	items = {},
	fluids = {},
	entities = {}
}

JohnCoreDict:add_entry = function(mod_data, proto_data)
	local entry = {}
	if     mod_data.proto_type = "item"   then entry = self.items
	elseif mod_data.proto_type = "fluid"  then entry = self.fluids
	elseif mod_data.proto_type = "entity" then entry = self.entities
	end
	
	if entry[mod_data.proto_name] ~= nil then
		entry[mod_data.proto_name][mod_data.mod_name] = {}
	else
		entry[mod_data.proto_name] = {}
		entry[mod_data.proto_name][mod_data.mod_name] = {}
	end
	
	proto_data.name = mod_data.proto_name
	entry[mod_data.proto_name][mod_data.mod_name] = util.table.deepcopy(proto_data)
end


-- Events
script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	
	player.insert{name="badge", count=1}
	
	local list = 0
	if game.active_mods["RandomFactorioThings"] then list = 1 		 end
	if game.active_mods["NewOreProcessing"] 	then list = list + 1 end
	if game.active_mods["PlutoniumEnergy"] 		then list = list + 3 end
	
		if list == 1 then player.print("Hello, thanks for installing Random Factorio Things. Also try Plutonium Energy mod (https://mods.factorio.com/mods/John_TheCF/PlutoniumEnergy).")	
	elseif list == 2 then player.print("Sorry, New Ore Processing doesn't supports, but thanks for installing Random Factorio Things. Also try Plutonium Energy mod (https://mods.factorio.com/mods/John_TheCF/PlutoniumEnergy).")
	elseif list == 3 then player.print("Hello, thanks for installing Plutonum Energy. Also try Random Factorio Things (https://mods.factorio.com/mods/John_TheCF/RandomFactorioThings).")
	elseif list == 4 then player.print("Hello, thanks for installing Random Factorio Things and Plutonium Energy mods!")
	elseif list == 5 then player.print("Hello, thanks for installing Plutonium Energy and Random Factorio Things. Sorry, New Ore Processing doesn't supports.")
	end
end)