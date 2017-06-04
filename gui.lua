gui = {
	handlers = {}
}

-- Delete all children of specified element
-- must not be nil
function gui.clear_element(element)
	for i, child in pairs(element.children_names) do
		element[child].destroy()
	end
end

function gui.on_gui_click(event)
	local player  = game.players[event.player_index]
	local element = event.element

	game.print(element.name)
	if (not player.valid) or (not element.valid) then
		return
	end

	local handler = gui.handlers[element.name]
	if handler ~= nil then
		event.player_index = nil
		event.player = player
		handler(event)
	end
end

function gui.create_element(parent, params, handler)
	local ele = parent.add(params)
	gui.register_event(ele, handler)
end

script.on_event(defines.events.on_gui_click, gui.on_gui_click)

return gui
