local inventories = {
	defines.inventory.player_armor,
	defines.inventory.player_tools,
	defines.inventory.player_guns,
	defines.inventory.player_ammo,
	defines.inventory.player_quickbar,
	defines.inventory.player_main,
	defines.inventory.player_vehicle,
	defines.inventory.player_trash,
}

-- player: Player to create chest for. Must not be nil.
function spawn_chest(player)
	local surface = game.surfaces[player.surface.name]
	if surface == nil then
		return nil
	end
	local pos = surface.find_non_colliding_position("steel-chest", player.position, 16, 1)
	if pos == nil then
		return nil
	end
	local chest = surface.create_entity{name="steel-chest", position=pos, force=player.force}
	if chest ~= nil then
		chest.destructible = false
		chest.last_user    = player
	end
	return chest
end

function spawn_chest2(player)
	local chest = spawn_chest(player)
	if chest == nil then
		return
	end
	return chest.get_inventory(defines.inventory.chest)
end


function store_player_inventory_in_chests(player)
	local from_inv = nil
	local to_inv   = nil
	local n = 0

	local store_item = function(item)
		if to_inv == nil or n > #to_inv then
			to_inv = spawn_chest2(player)
			n = 1
		end
		if to_inv ~= nil then
			to_inv[n].set_stack(item)
			n = n + 1
		end
	end

	for i, inv in ipairs(inventories) do
		local from_inv = player.get_inventory(inv)
		if from_inv ~= nil and not from_inv.is_empty() then
			for j = 1, #from_inv do
				local stack = from_inv[j]
				if stack.valid_for_read then
					store_item(stack)
				end
			end
		end
	end
end

function on_player_died(event)
	local player = game.players[event.player_index]
	if player ~= nil then
		store_player_inventory_in_chests(player)
	end
end

function on_pre_player_died(event)
	local player = game.players[event.player_index]
	player.clean_cursor()
end

script.on_event(defines.events.on_pre_player_died, on_pre_player_died)
script.on_event(defines.events.on_player_died, on_player_died)
