require("silo-script")
--require("deathchest") -- no longer necessary
require("watcher")
require("tasklist")
require("rules")
-- PEG: why it doesn't work when placed in tasklist.lua?
script.on_event(defines.events.on_gui_click, process_gui_click)

local version = 1

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
  --to stop new players from littering with junk items later on
  player.insert{name="iron-plate", count=20}
  --player.insert{name="pistol", count=1}
  player.insert{name="firearm-magazine", count=20}
  --player.insert{name="burner-mining-drill", count = 1}
  player.insert{name="stone-furnace", count = 2}
  player.force.chart(player.surface, {{player.position.x - 200, player.position.y - 200}, {player.position.x + 200, player.position.y + 200}})
  rules.on_player_created(event)
  silo_script.gui_init(player)
end)

script.on_event(defines.events.on_player_respawned, function(event)
  local player = game.players[event.player_index]
  --to stop littering with pistols
  --player.insert{name="pistol", count=1}
  --player.insert{name="firearm-magazine", count=10}
end)

script.on_event(defines.events.on_player_joined_game, function(event)
  rules.on_player_join(event)
  task_list.on_player_join(event)
end)

script.on_event(defines.events.on_player_left_game, function(event)
  task_list.on_player_leave(event)
  rules.on_player_leave(event)
end)

script.on_event(defines.events.on_gui_click, function(event)
  silo_script.on_gui_click(event)
  task_list.on_gui_click(event)
  rules.on_gui_click(event)
end)

script.on_init(function()
  global.version = version
  game.surfaces["nauvis"].always_day=true
  game.surfaces["nauvis"].daytime = 0.5
  silo_script.init()
  task_list.init()
end)

script.on_event(defines.events.on_rocket_launched, function(event)
  silo_script.on_rocket_launched(event)
end)

script.on_configuration_changed(function(event)
  if global.version ~= version then
    global.version = version
  end
  silo_script.on_configuration_changed(event)
  task_list.init()
end)

silo_script.add_remote_interface()
