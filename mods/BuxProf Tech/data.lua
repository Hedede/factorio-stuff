data:extend(
{
	{
		type = "gun",
		name = "poeben",
		icon = "__base__/graphics/icons/rocket-launcher.png", 
		flags = {"goes-to-main-inventory"},
		subgroup = "gun",
		order = "d[poeben]",
		attack_parameters =
		{
			ammo_category = "poeben-ammo",
			explosion = "explosion-gunshot",
			cooldown = 0.5,
			movement_slow_down_factor = 0.5,
			damage_modifier = 1.0,
			projectile_creation_distance = 0.6,
			range = 50,
			sound =
			{
				{
				--	filename = "__base__/sound/railgun.ogg",
					filename = "__BuxProf tech__/sounds/poe.ogg",
					volume = 0.5
				}
			}
		},
		stack_size = 5
	},
	{
		type = "ammo-category",
		name = "poeben-ammo"
	},
	{
		type = "projectile",
		name = "poeben-projectile",
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 10, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__BuxProf tech__/graphics/poeben-shot.png",
      frame_count = 1,
      width = 16,
      height = 16,
      priority = "high"
    },
	},
	{
		type = "ammo",
		name = "poeben-ammo",
		icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "poeben-ammo",
			target_type = "direction",
			source_effects =
			{
				type = "create-entity",
				entity_name = "explosion-gunshot"
			},
			action =
			{
				type = "direct",
				repeat_count = 1,
				action_delivery =
				{
					type = "projectile",
					projectile = "poeben-projectile",
					starting_speed = 0.2,
					direction_deviation = 0.08,
					range_deviation = 0.3,
					max_range = 50,
				}
			}
		},
		magazine_size = 100,
		subgroup = "ammo",
		order = "d[poeben]",
		stack_size = 100
	},
	{
    type = "mining-tool",
    name = "mining-poeben",
    icon = "__base__/graphics/icons/steel-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 8 , type = "physical"}
        }
      }
    },
    durability = 50000,
    subgroup = "tool",
    order = "a[mining]-b[poeben]",
    speed = 100,
    stack_size = 20
	},
}
)
--- vim:ts=2:sw=2
