require("gui")
surface_gui = {}
local function create_surface(name, player)
	local settings = game.surfaces["nauvis"].map_gen_settings
	settings.seed = math.random(1,2147483648)
	game.create_surface(name, settings)
	player.force.chart(game.surfaces[name], {{-250, -250}, {250, 250}})

	surface_gui.update_all();
end

local function btn_create_surface(event)
	local player = event.player
	local frame = player.gui.center["surfaces-frame"]
	local descr = frame.flow["name-input"].text
	if descr == "" then
		player.print("Enter surface name")
		return
	end
	create_surface(descr, player)
end

local function teleport_player(player, name)
	local surface = game.surfaces[name];
	if surface ~= nil then
		local pos = player.force.get_spawn_position(surface);
		player.teleport(pos, surface)
	end
	return true
end

local function btn_set_spawn_position(event)
	local player = event.player
	local pos = player.position;
	player.force.set_spawn_position(pos, player.surface);
end

function surface_gui.create(player)
	if player.gui.top["surfaces-button"] == nil then
		gui.create_element(
			player.gui.top,
			{
				type = "button",
				name = "surfaces-button",
				caption = "Surfaces",
				tooltip = "Click here to teleport to another surface."
			},
			function(event)
				local player = event.player
				local state = player.gui.center["surfaces-frame"].style.visible
				player.gui.center["surfaces-frame"].style.visible = not state
			end
		)
	end

	if player.gui.center["surfaces-frame"] == nil then
		local frame = player.gui.center.add{
			type = "frame",
			name = "surfaces-frame",
			direction = "vertical"
		}

		local flow = frame.add{ type = "flow", name = "flow", direction = "horizontal"}
		if player.admin then
			gui.create_element(
				flow,
				{ type = "button", name = "button-add-surface", caption = "Add" },
				btn_create_surface
			)
			flow.add{ type = "textfield", name = "name-input" }
			gui.create_element(
				flow,
				{ type = "button", name = "button-set-spawn", caption = "Set spawn point" },
				btn_set_spawn_position
			)
		end
		gui.create_element(
			flow, { type = "button", caption = "Close" },
			function(event)
				event.player.gui.center["surfaces-frame"].style.visible = false
			end
		)

		local scroll = frame.add{
			type = "scroll-pane",
			name = "surface-list",
			direction = "vertical",
			vertical_scroll_policy = "always",
			horizontal_scroll_policy = "auto"
		}

		scroll.style.maximal_height = 565;
		scroll.style.minimal_height = 565;
		scroll.style.maximal_width  = 400;
		scroll.style.minimal_width  = 400;

		frame.style.visible = false
	end
end

function surface_gui.update(player)
	local frame = player.gui.center["surfaces-frame"]
	local content = frame["surface-list"]
	gui.clear_element(content)
	for name, surface in pairs(game.surfaces) do
		local flow = content.add{
			type = "flow",
			name = "flow-surf-"..name,
			direction = "horizontal"
		}
		gui.create_element(
			flow,
			{
				type = "button",
				name = "btn-teleport-"..name,
				caption = "Teleport"

			},
			function(event)
				local player = event.player
				teleport_player(player, name)
			end
		)
		flow.add{
			type = "label",
			name = "lbl-surface-"..name,
			caption = name
		}
	end
end

function surface_gui.update_all()
	for i, player in pairs(game.connected_players) do
		surface_gui.update(player)
	end
end

function surface_gui.on_player_join(event)
	local player = game.players[event.player_index]
	surface_gui.create(player)
	surface_gui.update(player);
end

function surface_gui.on_player_leave(event)
	local player = game.players[event.player_index]
	gui.destroy_element(player.gui.top["surfaces-button"])
	gui.destroy_element(player.gui.center["surfaces-frame"])
end

events.register_event(defines.events.on_gui_click, surface_gui.on_gui_click)

return surface_gui
