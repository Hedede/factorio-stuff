script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
  player.insert{name="iron-plate", count=8}
  player.insert{name="pistol", count=1}
  player.insert{name="firearm-magazine", count=10}
  player.insert{name="burner-mining-drill", count = 1}
  player.insert{name="stone-furnace", count = 1}
  player.force.chart(player.surface, {{player.position.x - 200, player.position.y - 200}, {player.position.x + 200, player.position.y + 200}})
  if (#game.players <= 1) then
    game.show_message_dialog{text = {"msg-intro"}}
  else
    player.print({"msg-intro"})
  end
end)

script.on_event(defines.events.on_player_respawned, function(event)
  local player = game.players[event.player_index]
  player.insert{name="pistol", count=1}
  player.insert{name="firearm-magazine", count=10}
end)

script.on_event(defines.events.on_rocket_launched, function(event)
  local force = event.rocket.force
  if event.rocket.get_item_count("satellite") == 0 then
    if (#game.players <= 1) then
      game.show_message_dialog{text = {"gui-rocket-silo.rocket-launched-without-satellite"}}
    else
      for index, player in pairs(force.players) do
        player.print({"gui-rocket-silo.rocket-launched-without-satellite"})
      end
    end
    return
  end
  if not global.satellite_sent then
    global.satellite_sent = {}
  end
  if global.satellite_sent[force.name] then
    global.satellite_sent[force.name] = global.satellite_sent[force.name] + 1   
  else
    game.set_game_state{game_finished=true, player_won=true, can_continue=true}
    global.satellite_sent[force.name] = 1
  end
  for index, player in pairs(force.players) do
    if player.gui.left.rocket_score then
      player.gui.left.rocket_score.rocket_count.caption = tostring(global.satellite_sent[force.name])
    else
      local frame = player.gui.left.add{name = "rocket_score", type = "frame", direction = "horizontal", caption={"score"}}
      frame.add{name="rocket_count_label", type = "label", caption={"", {"rockets-sent"}, ":"}}
      frame.add{name="rocket_count", type = "label", caption=tostring(global.satellite_sent[force.name])}
    end
  end
end)

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
script.on_event(defines.events.on_player_created, log_player_joined)
