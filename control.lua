script.on_event(defines.events.on_built_entity, function(event)
	if event.created_entity.name == "RFT-stone-casting-machine" then
		event.created_entity.burner.heat = 1000000
	end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
	if event.created_entity.name == "RFT-stone-casting-machine" then
		event.created_entity.burner.heat = 1000000
	end
end)
