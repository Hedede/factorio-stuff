task_list = {}
function task_list.init()
	if global.task_list == nil then
		global.task_list = {}
	end
end

function task_list.delete_task(player, index)
	local descr = global.task_list[index]
	if descr ~= nil then
		game.print(player.name .. ' has removed task "' .. descr .. '"')
	end
	table.remove( global.task_list, index )
	task_list.update_all();
end

gui.handlers["task-button"] = function(event)
	local state = event.player.gui.center["task-frame"].style.visible
	event.player.gui.center["task-frame"].style.visible = not state
end
gui.handlers["button-close-tasks"] = function(event)
	event.player.gui.center["task-frame"].style.visible = false
end
gui.handlers["button-add-task"] = function(event)
	local player = event.player
	local frame = player.gui.center["task-frame"]
	local descr = frame.flow.taskname.text
	frame.flow.taskname.text = ""
	if descr == "" or string.len(descr) > 256 then
		return
	end
	table.insert( global.task_list, descr)
	game.print(player.name .. ' has added task "' .. descr .. '"')

	task_list.update_all();
end

local function create_per_task_handlers()
	for i, task in pairs(global.task_list) do
		gui.handlers["btn-del-"..i] = function(event)
			task_list.delete_task(event.player, i)
		end
	end
end

function task_list.update(player)
	local frame = player.gui.center["task-frame"]
	local content = frame.tasks
	gui.clear_element(content)
	for i, task in pairs(global.task_list) do
		local flow = content.add{
			type = "flow",
			name = "task_"..i,
			direction = "horizontal"
		}
		flow.add{
			type = "button",
			name = "btn-del-"..i,
			caption = "x"
		}
		flow.add{
			type = "label",
			name = "tsk-"..i,
			caption = "[" .. i .. "] " .. task
		}
	end
end

function task_list.update_all()
	for i, player in pairs(game.connected_players) do
		task_list.update(player)
	end
	create_per_task_handlers()
end

function task_list.on_player_join(event)
	local player = game.players[event.player_index]
	if player.gui.top["task-button"] == nil then
		player.gui.top.add {
			type = "button",
			name = "task-button",
			caption = "Task list",
			tooltip = "List of things to do."
		}
	end

	if player.gui.center["task-frame"] == nil then
		local frame = player.gui.center.add{
			type = "frame",
			name = "task-frame",
			direction = "vertical"
		}

		local flow = frame.add{ type = "flow", name = "flow", direction = "horizontal"}
		flow.add{ type = "button",    name = "button-add-task", caption = "Add" }
		flow.add{ type = "textfield", name = "taskname" }
		flow.add{ type = "button",    name = "button-close-tasks", caption = "X" }

		local scroll = frame.add{
			type = "scroll-pane",
			name = "tasks",
			direction = "vertical",
			vertical_scroll_policy = "always",
			horizontal_scroll_policy = "auto"
		}

		scroll.style.maximal_height = 636;
		scroll.style.minimal_height = 636;
		scroll.style.maximal_width  = 450;
		scroll.style.minimal_width  = 450;

		frame.style.visible = false

	end

	task_list.update(player);
	create_per_task_handlers();
end

function task_list.on_player_leave(event)
	local player = game.players[event.player_index]
	if player.gui.top["task-button"] ~= nil then
		player.gui.top["task-button"].destroy()
	end
	if player.gui.center["task-frame"] ~= nil then
		player.gui.center["task-frame"].destroy()
	end
end

return task_list
