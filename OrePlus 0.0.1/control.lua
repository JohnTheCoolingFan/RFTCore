script.on_event(defines.events.on_player_created, function(event)
	if game.active_mods["NewOreProcessing"] then
		game.players[event.player_index].print("WARNING!!! OrePlus is incompatible with New Ore Processing. DELETE NEW ORE PROCESSING!!!")
	else
		game.players[event.player_index].insert{name="burner-smeltery", count=1}
		game.players[event.player_index].insert{name="JC-casting-machine", count=1}
	end
end)