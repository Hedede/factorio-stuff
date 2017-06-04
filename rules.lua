rules = {}

rules_text = {
	"- No main bus, except for staring bootstrap base.",
	"- Products are made in separate factories connected by trains.",
	"- No global logistic robot network. Each base should have it's own logistics network.",
	"- No rail loops. Use double-headed trains.",
	"- Don't use landifll more than necessary. Don't fill in entire lakes and don't build long bridges."
};

function rules.on_player_created(event)
	local player = game.players[event.player_index]

	player.print("Welcome to Hedede's eternal night railworld! This is a train-based map, and I have several guidelines:")
	for _, text in ipairs(rules_text) do
		player.print(text)
	end
end

function rules.on_player_join(event)
	local player = game.players[event.player_index]
	if player.gui.top["rules-button"] == nil then
		player.gui.top.add {
			type = "button",
			name = "rules-button",
			caption = "Rules",
			tooltip = "Rules for designing this base."
		}
	end

	if player.gui.left["rules-frame"] == nil then
		local frame = player.gui.left.add{
			type = "frame",
			name = "rules-frame",
			direction = "vertical"
		}

		local flow = frame.add{ type = "flow", name = "flow", direction = "vertical"}

		local scroll = frame.add{
			type = "scroll-pane",
			name = "rules-list",
			direction = "vertical",
			vertical_scroll_policy = "always",
			horizontal_scroll_policy = "auto"
		}

		for i, text in ipairs(rules_text) do
			flow.add{
				type = "label",
				name = "rule-"..i,
				caption = text
			}
		end

		frame.style.visible = false
	end
end

function rules.on_player_leave(event)
	local player = game.players[event.player_index]
	if player.gui.top["rules-button"] ~= nil then
		player.gui.top["rules-button"].destroy()
	end
	if player.gui.left["rules-frame"] ~= nil then
		player.gui.left["rules-frame"].destroy()
	end
end


function rules.on_gui_click(event)
	local player = event.player
	local name   = event.element.name

	if name == "rules-button" then
		local state = player.gui.left["rules-frame"].style.visible
		player.gui.left["rules-frame"].style.visible = not state
		return true
	end
end

events.register_event(defines.events.on_gui_click, rules.on_gui_click)

return rules
