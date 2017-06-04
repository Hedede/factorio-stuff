events = {
	callbacks = {
	}
}

function events.register_event(event_id, callback)
	if (events.callbacks[event_id] == nil) then
		events.callbacks[event_id] = {}
	end
	table.insert(events.callbacks[event_id], callback)
end

--[[function events.on_gui_click(event)
	local player  = game.players[event.player_index]
	local element = event.element
	if (not player.valid) or (not element.valid) then
		return
	end

	event.player_index = nil
	event.player = player

	local lst = events.callbacks[defines.events.on_gui_click]
	for i, callback in ipairs(lst) do
		if callback(event) then
			return;
		end
	end
end]]

--script.on_event(defines.events.on_player_join, events.on_player_join)
--script.on_event(defines.events.on_gui_click, events.on_gui_click)

return events
