require "prototypes.recipe.test-smelting"
data:extend({
	  {
    type = "module",
    name = "speed-module-1000",
    icon = "__base__/graphics/icons/speed-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module",
    category = "speed",
    tier = 4,
    order = "a[speed]-c[speed-module-3]",
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 100}, consumption = {bonus = -0.8}}
  },
  {
    type = "item",
    name = "mega-core",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "d[mega-core]-a[mega-core]",
    place_result = "mega-core",
    stack_size = 1
  },
  {
    type = "accumulator",
    name = "mega-core",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "mega-core"},
    order = "d[mega-core]-a[mega-core]",
    max_health = 1000,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1GJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "1GW"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    charge_cooldown = 0,    
    discharge_cooldown = 0,    
  },
    {
    type = "item",
    name = "calibrator-lamp",
    icon = "__base__/graphics/icons/small-lamp.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "c[light]-b[calibrator-lamp]",
    place_result = "calibrator-lamp",
    stack_size = 10
  },
    {
    type = "lamp",
    name = "calibrator-lamp",
    icon = "__base__/graphics/icons/small-lamp.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "calibrator-lamp"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "100MW",
    light = {intensity = 40, size = 200},
    light_when_colored = {intensity = 100, size = 100},
    glow_size = 120,
    glow_color_intensity = 1.000,
    picture_off =
    {
      filename = "__base__/graphics/entity/small-lamp/light-off.png",
      priority = "high",
      width = 67,
      height = 58,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0.015625, 0.15625},
    },
    picture_on =
    {
      filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
      priority = "high",
      width = 62,
      height = 62,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0.03125, -0.03125},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
      {type="virtual", name="signal-black", color={r=0,g=0,b=0}},
    },

    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.578125},
        green = {0.609375, 0.640625},
      },
      wire =
      {
        red = {0.40625, 0.34375},
        green = {0.40625, 0.5},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.28125}, {0.1875, 0.28125}, 18),
    circuit_wire_max_distance = 7.5

  },

  {
    type = "ammo",
    name = "ohuen-shotgun-shell",
    icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 30,
        action_delivery =
        {
          type = "projectile",
          projectile = "piercing-shotgun-pellet",
          starting_speed = 2,
          direction_deviation = 0.2,
          range_deviation = 0.2,
          max_range = 40,
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "b[shotgun]-b[ohuen]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "ojuen-shotgun-shell",
    icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 100,
        action_delivery =
        {
          type = "projectile",
          projectile = "piercing-shotgun-pellet",
          starting_speed = 1,
          direction_deviation = 0.5,
          range_deviation = 0.4,
          max_range = 9,
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "b[shotgun]-b[ojuen]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "pls-car-only",
    icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 50 , type = "physical"}
            }
          },
          max_range = 50,
        }
      }
    },
    magazine_size = 100,
    subgroup = "ammo",
    order = "b[basic-clips]-b[mcr]",
    stack_size = 200
  },
  {
    type = "ammo",
    name = "pls-car-only2",
    icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 200,
        action_delivery =
        {
          type = "projectile",
          projectile = "piercing-shotgun-pellet",
          starting_speed = 4,
          direction_deviation = 0.5,
          range_deviation = 0.1,
          max_range = 50,
        }
      }
    },
    magazine_size = 100,
    subgroup = "ammo",
    order = "b[basic-clips]-b[mcr]",
    stack_size = 200
  },
    {
    type = "projectile",
    name = "pinced-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
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
          damage = {amount = 100, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
  {
    type = "ammo",
    name = "pinced",
    icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "pinced-pellet",
          starting_speed = 8,
          direction_deviation = 0,
          range_deviation = 0.1,
          max_range = 200,
        }
      }
    },
    magazine_size = 1,
    subgroup = "ammo",
    order = "b[basic-clips]-b[mc2]",
    stack_size = 500
  },
    {
    type = "item",
    name = "mega-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-b[mega-turret]",
    place_result = "mega-turret",
    stack_size = 50
  },
  {
    type = "projectile",
    name = "lobzyr",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 125, type = "laser"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "big-explosion",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 8,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 50, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
      tint = {r=0.5, g=0.0, b=1.0},
      frame_count = 1,
      width = 100,
      height = 33,
      priority = "high",
      blend_mode = "additive"
    },
    speed = 0.15
  },
  {
    type = "electric-turret",
    name = "mega-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "mega-turret" },
    max_health = 5000,
    corpse = "medium-remnants",
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1GJ",
      input_flow_limit = "128MW",
      drain = "1MW",
      usage_priority = "primary-input"
    },
    folded_animation =
    {
      layers =
      {
        laser_turret_extension{frame_count=1, line_length = 1},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        laser_turret_extension{},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun.png",
          line_length = 8,
          width = 68,
          height = 68,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {0.0625, -1}
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
          flags = { "mask" },
          line_length = 8,
          width = 54,
          height = 44,
          frame_count = 1,
          axially_symmetrical = false,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {0.0625, -1.3125},
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
          line_length = 8,
          width = 88,
          height = 52,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          draw_as_shadow = true,
          shift = {1.59375, 0}
        }
      }
    },
    folding_animation = 
    {
      layers =
      {
        laser_turret_extension{run_mode = "backward"},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
          priority = "high",
          width = 98,
          height = 82,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = { 0.109375, 0.03125 }
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 54,
          height = 46,
          frame_count = 1,
          axially_symmetrical = false,
          apply_runtime_tint = true,
          direction_count = 1,
          frame_count = 1,
          shift = {0.046875, -0.109375},
        },
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 100,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = 120,
      min_range = 9,
      damage_modifier = 2,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "100MJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "lobzyr",
                starting_speed = 0.28
              }
            }
          }
        }
      },
      sound = make_laser_sounds()
    },
    call_for_help_radius = 40
  },
    {
    type = "ammo",
    name = "megagun-ammo",
    icon = "__base__/graphics/icons/flamethrower-ammo.png",
    flags = {"goes-to-main-inventory"},
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "lobzyr",
                starting_speed = 0.28
              }
            }
          }
        }
      },
    magazine_size = 1,
    subgroup = "ammo",
    order = "e[megagun]",
    stack_size = 100
  },
    {
    type = "gun",
    name = "megagun",
    icon = "__base__/graphics/icons/railgun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "c[megagun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "laser-turret",
      cooldown = 100,
      projectile_center = {0, -0.2},
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      range = 120,
      min_range = 9,
      damage_modifier = 1,

      sound = make_laser_sounds()
    },
    stack_size = 5
  }
})
