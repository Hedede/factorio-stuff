-- Log (destructive) player actions to stdout.
--

watcher = {}

function you_are_watched(index)
	if not global.has_notified then
		global.has_notified = {}
	end
	if not global.has_notified[index] then
		game.players[index].print('Your actions have been logged.')
		global.has_notified[index] = true
	end
end

function log_player_joined(event)
	local player = game.players[event.player_index]
	print(player.name .. ' has joined the game')
end

function log_item_mined(event)
	local player = game.players[event.player_index]
	print(player.name .. ' has mined ' .. event.item_stack.name)
	you_are_watched(event.player_index);
end

function log_marked_deconstruction(event)
	local player = game.players[event.player_index]
	print(player.name .. ' is deconstructing ' .. event.entity.name)
	you_are_watched(event.player_index);
end

script.on_event(defines.events.on_player_mined_item, log_item_mined)
script.on_event(defines.events.on_marked_for_deconstruction, log_marked_deconstruction)

return watcher
