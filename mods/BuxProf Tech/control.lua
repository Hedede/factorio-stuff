require "util"
require "defines"


script.on_init( 
  function() 
    global.staticEnergyGenerators = {} 
  end
)

script.on_load(
  function()
    if not global.staticEnergyGenerators then
      global.staticEnergyGenerators = {}
    end
  end
)

local function log(d)
   game.players[1].print(d)
end

script.on_event(
  defines.events,
  function(event)
    if event.name == defines.events.on_built_entity then
      -- handle on built entity
      if event.created_entity.name == "mega-core" then
        log("generator built")
        table.insert(global.staticEnergyGenerators, event.created_entity)
      end
    end
  end
)

script.on_event(defines.events.on_tick, function(event) 
  if (event.tick % 60 == 0) then
    -- log("doing evil")

    for index, reactor in ipairs(global.staticEnergyGenerators) do
      if not reactor.valid then 
        table.remove(global.staticEnergyGenerators, index)
      else
       -- log("effecting generators")
        reactor.energy = 1000000000
      end
    end
  end
end)
