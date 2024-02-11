gui = {
	handlers = {}
}

-- gui system in factorio is moronic
-- I'm changing this frequently, so blahblah
local function get_key(element)
--	return element
--	return tostring(element.player_index) ..'/'.. element.name
	return element.name
end

-- Add handler for a gui element, a function
-- that will be called when player interacts with the element
function gui.register_event(element, handler)
	if handler ~= nil then
		gui.handlers[get_key(element)] = handler
	end
end

function gui.remove_handler(element)
	gui.handlers[get_key(element)] = nil
end

function gui.remove_all_handlers(element)
	if element ~= nil then
		for i, child in pairs(element.children_names) do
			gui.remove_all_handlers(element[child])
		end
		gui.remove_handler(element)
	end
end

function gui.destroy_element(element)
	if element ~= nil and element.valid then
		gui.remove_all_handlers(element)
		element.destroy()
	end
end

-- Delete all children of specified element
-- must not be nil
function gui.clear_element(element)
	for i, child in pairs(element.children_names) do
		gui.destroy_element(element[child])
	end
end

function gui.on_gui_click(event)
	local player  = game.players[event.player_index]
	local element = event.element

	if (not player.valid) then
		return
	end

	if (not element.valid) then
		return
	end

	local handler = gui.handlers[get_key(element)]
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
