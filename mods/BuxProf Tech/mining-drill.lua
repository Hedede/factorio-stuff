data:extend({
    {
    type = "item",
    name = "zuz-mining-drill",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b[zuuz-mining-drill]",
    place_result = "zuz-mining-drill",
    stack_size = 50
  },
  {
    type = "mining-drill",
    name = "zuz-mining-drill",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "zuz-mining-drill"},
    max_health = 300,
    resource_categories = {"basic-solid","basic-fluid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
        line_length = 8,
        width = 98,
        height = 113,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -8.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
          line_length = 8,
          width = 196,
          height = 226,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -8),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(3.5, -1),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(3.75, -1.25),
          run_mode = "forward-then-backward",      
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
        line_length = 8,
        width = 98,
        height = 109,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
          line_length = 8,
          width = 196,
          height = 219,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-3.5, -1),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-3.75, -0.75),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    shadow_animations =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-shadow.png",
        line_length = 8,
        width = 101,
        height = 111,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1.5, -7.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-shadow.png",
          line_length = 8,
          width = 201,
          height = 223,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -7.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-shadow.png",
        line_length = 8,
        width = 110,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(6, -0.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-shadow.png",
          line_length = 8,
          width = 221,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(6.25, -0.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-shadow.png",
        line_length = 8,
        width = 100,
        height = 103,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, 2.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-shadow.png",
          line_length = 8,
          width = 200,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, 2.5),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-shadow.png",
        line_length = 8,
        width = 114,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, -0.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-shadow.png",
          line_length = 8,
          width = 229,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -0.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch.png",
        line_length = 1,
        width = 100,
        height = 111,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6.5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch.png",
          line_length = 1,
          width = 200,
          height = 222,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6.5),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch.png",
        line_length = 1,
        width = 100,
        height = 110,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch.png",
          line_length = 1,
          width = 200,
          height = 219,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -5.75),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch.png",
        line_length = 1,
        width = 100,
        height = 113,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -7.5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch.png",
          line_length = 1,
          width = 200,
          height = 226,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -7.5),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch.png",
        line_length = 1,
        width = 100,
        height = 108,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch.png",
          line_length = 1,
          width = 200,
          height = 220,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
        line_length = 1,
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
          line_length = 1,
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
        line_length = 1,
        width = 112,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(6, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
          line_length = 1,
          width = 224,
          height = 198,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(6, 0),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
        line_length = 1,
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
          line_length = 1,
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
        line_length = 1,
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
          line_length = 1,
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_animations =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 102,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -3),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 102,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 209,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -1),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 204,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2.5),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 96,
        height = 99,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 198,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_window_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
        line_length = 1,
        width = 72,
        height = 54,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1, 1),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
          line_length = 1,
          width = 142,
          height = 107,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1, 0.75),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
        line_length = 1,
        width = 51,
        height = 74,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-11.5, -11),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
          line_length = 1,
          width = 104,
          height = 147,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11, -11.25),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
        line_length = 1,
        width = 71,
        height = 44,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1.5, -29),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
          line_length = 1,
          width = 141,
          height = 86,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1.75, -29),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
        line_length = 1,
        width = 41,
        height = 69,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11.5, -11.5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
          line_length = 1,
          width = 80,
          height = 137,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11.5, -11.25),
          scale = 0.5
        }
      }
    },
    
    input_fluid_patch_window_flow_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
          line_length = 1,
          width = 68,
          height = 50,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -1),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
            line_length = 1,
            width = 136,
            height = 99,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -0.75),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
          line_length = 1,
          width = 41,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11.5, -11),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
            line_length = 1,
            width = 82,
            height = 139,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-11.5, -11.25),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
          line_length = 1,
          width = 68,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
            line_length = 1,
            width = 136,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -29.5),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
          line_length = 1,
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11, -11),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
            line_length = 1,
            width = 83,
            height = 140,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(10.75, -11),
            scale = 0.5
          }
        }
      },
    },
    input_fluid_patch_window_base_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
          line_length = 1,
          width = 70,
          height = 48,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, 0),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
            line_length = 1,
            width = 138,
            height = 94,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, 0),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
          line_length = 1,
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-12, -11),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
            line_length = 1,
            width = 84,
            height = 138,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-12, -11),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
          line_length = 1,
          width = 70,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
            line_length = 1,
            width = 138,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, -29),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
          line_length = 1,
          width = 42,
          height = 69,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(12, -10.5),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
            line_length = 1,
            width = 83,
            height = 137,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(11.75, -10.75),
            scale = 0.5
          }
        }
      },
    },
    mining_speed = 8,
    energy_source =
    {
      type = "electric",
      emissions = 0.25 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "1.2MW",
    mining_power = 2,
    resource_searching_radius = 24.9,
    vector_to_place_result = {0, -1.85},
    fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    module_specification =
    {
      module_slots = 5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    fast_replaceable_group = "mining-drill"
  }
})
