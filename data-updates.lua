

-- *************************************************
-- ******************** General ********************
-- *************************************************
if settings.startup["sssa-revert-module-recipes"].value then
    data.raw.recipe["speed-module-3"].ingredients = {
        {
          amount = 4,
          name = "speed-module-2",
          type = "item"
        },
        {
          amount = 5,
          name = "advanced-circuit",
          type = "item"
        },
        {
          amount = 5,
          name = "processing-unit",
          type = "item"
        }
    }
    local t = data.raw.recipe["speed-module-3-recycling"].results
    if t ~= nil then
      for i=#t,1,-1 do
        if t[i].name == "tungsten-carbide" then
          table.remove(t, i)
        end
      end
    end
    data.raw.recipe["productivity-module-3"].ingredients = {
        {
          amount = 4,
          name = "productivity-module-2",
          type = "item"
        },
        {
          amount = 5,
          name = "advanced-circuit",
          type = "item"
        },
        {
          amount = 5,
          name = "processing-unit",
          type = "item"
        }
    }
    t = data.raw.recipe["productivity-module-3-recycling"].results
    if t ~= nil then
      for i=#t,1,-1 do
        if t[i].name == "biter-egg" then
          table.remove(t, i)
        end
      end
    end
    data.raw.recipe["efficiency-module-3"].ingredients = {
        {
          amount = 4,
          name = "efficiency-module-2",
          type = "item"
        },
        {
          amount = 5,
          name = "advanced-circuit",
          type = "item"
        },
        {
          amount = 5,
          name = "processing-unit",
          type = "item"
        }
    }
    t = data.raw.recipe["efficiency-module-3-recycling"].results
    if t ~= nil then
      for i=#t,1,-1 do
        if t[i].name == "spoilage" then
          table.remove(t, i)
        end
      end
    end
end
if settings.startup["sssa-quality-module-no-superconductor"].value then
  data.raw.recipe["quality-module-3"].ingredients = {
    {
      amount = 4,
      name = "quality-module-2",
      type = "item"
    },
    {
      amount = 5,
      name = "advanced-circuit",
      type = "item"
    },
    {
      amount = 5,
      name = "processing-unit",
      type = "item"
    }
  }
  local t = data.raw.recipe["quality-module-3-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "superconductor" then
        table.remove(t, i)
      end
    end
  end
end
if settings.startup["sssa-revert-cliff-explosive-recipe"].value then
    data.raw.recipe["cliff-explosives"].ingredients = {
        {
          amount = 10,
          name = "explosives",
          type = "item"
        },
        {
          amount = 1,
          name = "grenade",
          type = "item"
        },
        {
          amount = 1,
          name = "barrel",
          type = "item"
        }
    }
    data.raw.recipe["cliff-explosives-recycling"].results = {
      {
        amount = 2.5,
        extra_count_fraction = 0.5,
        name = "explosives",
        type = "item"
      },
      {
        amount = 0.25,
        extra_count_fraction = 0.25,
        name = "grenade",
        type = "item"
      },
      {
        amount = 0.25,
        extra_count_fraction = 0.25,
        name = "barrel",
        type = "item"
      }
  }
end
if settings.startup["sssa-rocket-parts-per-rocket"].value ~= 50 then
    data.raw["rocket-silo"]["rocket-silo"].rocket_parts_required = 10
end
if settings.startup["sssa-rockets-only-need-fuel"].value then
    data.raw.recipe["rocket-part"].ingredients = {
        {
          amount = 1,
          name = "rocket-fuel",
          type = "item"
        }
    }
end
if settings.startup["sssa-easy-space-foundations"].value then
    data.raw.item["space-platform-foundation"].stack_size = 200
    data.raw.item["space-platform-foundation"].weight = 10000
    data.raw.recipe["space-platform-foundation"].results = {
        {
            amount = 10,
            name = "space-platform-foundation",
            type = "item"
        }
    }
end
if settings.startup["sssa-pld-nerf-revert"].value then
    data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters.damage_modifier = 3
end
if settings.startup["sssa-nutrients-lifetime-multiplier"].value ~= 1 then
  local m = settings.startup["sssa-nutrients-lifetime-multiplier"].value
  if m == 0 then
    data.raw.item["nutrients"].spoil_ticks = nil
  else
    data.raw.item["nutrients"].spoil_ticks = data.raw.item["nutrients"].spoil_ticks * m
  end
end
if settings.startup["sssa-nutrients-no-spoilage-result"].value then
  data.raw.item["nutrients"].spoil_result = nil
end
--[[if settings.startup["sssa-nutrients-burnable"].value then
  data.raw.item["nutrients"].fuel_category = "chemical"
  data.raw.item["nutrients"].fuel_value = "250kJ"
end]]
--[[if settings.startup["sssa-easter-egg"].value then
    local qm = table.deepcopy(data.raw.module["quality-module"])
    qm.name = "quality-module-sssa"
    qm.effect = {
        quality = 100,
        speed = 1.00
    }
    qm.hidden = true
    local qmr = table.deepcopy(data.raw.recipe[])
    qmr.name = "quality-module-sssa"
    qmr.ingredients = {
        {
          amount = 1,
          name = "quality-module",
          type = "item"
        }
    }
    qmr.results = {
        {
          amount = 1,
          name = "quality-module-sssa",
          type = "item"
        }
    }
    qmr.hidden = true
    data:extend({qm, qmr})
end]]


-- *************************************************
-- ********************* Space *********************
-- *************************************************
--TODO populate these with modded asteroids?
local small_asteroid_table = { 
  data.raw["asteroid"]["small-oxide-asteroid"],
  data.raw["asteroid"]["small-carbonic-asteroid"],
  data.raw["asteroid"]["small-metallic-asteroid"],
  data.raw["asteroid"]["small-promethium-asteroid"],
}
local medium_asteroid_table = {
  data.raw["asteroid"]["medium-oxide-asteroid"],
  data.raw["asteroid"]["medium-carbonic-asteroid"],
  data.raw["asteroid"]["medium-metallic-asteroid"],
  data.raw["asteroid"]["medium-promethium-asteroid"],
}
local big_asteroid_table = {
  data.raw["asteroid"]["big-oxide-asteroid"],
  data.raw["asteroid"]["big-carbonic-asteroid"],
  data.raw["asteroid"]["big-metallic-asteroid"],
  data.raw["asteroid"]["big-promethium-asteroid"],
}
local huge_asteroid_table = {
  data.raw["asteroid"]["huge-oxide-asteroid"],
  data.raw["asteroid"]["huge-carbonic-asteroid"],
  data.raw["asteroid"]["huge-metallic-asteroid"],
  data.raw["asteroid"]["huge-promethium-asteroid"],
}

if settings.startup["sssa-asteroid-health-multiplier"].value ~= 1 then
  local m = settings.startup["sssa-asteroid-health-multiplier"].value
  for i=#huge_asteroid_table,1,-1 do
    huge_asteroid_table[i].max_health = math.ceil(huge_asteroid_table[i].max_health * m)
    big_asteroid_table[i].max_health = math.ceil(big_asteroid_table[i].max_health * m)
    medium_asteroid_table[i].max_health = math.ceil(medium_asteroid_table[i].max_health * m)
    small_asteroid_table[i].max_health = math.ceil(small_asteroid_table[i].max_health * m)
  end
end

local asteroid_reduction_count = settings.startup["sssa-downgrade-asteroid-defenses"].value
while asteroid_reduction_count > 0 do
  for i=#huge_asteroid_table,1,-1 do
    huge_asteroid_table[i].resistances = big_asteroid_table[i].resistances
    big_asteroid_table[i].resistances = medium_asteroid_table[i].resistances
    medium_asteroid_table[i].resistances = small_asteroid_table[i].resistances
    small_asteroid_table[i].resistances = nil
  end
  asteroid_reduction_count = asteroid_reduction_count - 1
end
while asteroid_reduction_count < 0 do
  for i=#huge_asteroid_table,1,-1 do
    small_asteroid_table[i].resistances = medium_asteroid_table[i].resistances
    medium_asteroid_table[i].resistances = big_asteroid_table[i].resistances
    big_asteroid_table[i].resistances = huge_asteroid_table[i].resistances
  end
  asteroid_reduction_count = asteroid_reduction_count + 1
end

if settings.startup["sssa-allow-chests-in-space"].value then
  for _,group in pairs(data.raw) do
    for _,obj in pairs(group) do
      if obj.type == "logistic-container" or obj.type == "container" then
        if obj.surface_conditions then obj.surface_conditions = nil end
      end
    end
  end
end

if settings.startup["sssa-allow-roboports-in-space"].value then
  for _,group in pairs(data.raw) do
    for _,obj in pairs(group) do
      if obj.type == "roboport" then
        if obj.surface_conditions then obj.surface_conditions = nil end
      end
    end
  end
end

--[[
Metallic/Carbonic/Oxide Asteroid Crushing
Metallic/Carbonic/Oxide Asteroid Reprocessing
Advanced Metallic/Carbonic/Oxide Asteroid Crushing
]]

if settings.startup["sssa-no-asteroid-recursion"].value then
  data.raw.recipe["carbonic-asteroid-crushing"].results = {
    {
      amount = 12,
      name = "carbon",
      type = "item"
    }
  }
  data.raw.recipe["carbonic-asteroid-reprocessing"].results = {
    {
      amount = 1,
      name = "metallic-asteroid-chunk",
      probability = 0.4,
      type = "item"
    },
    {
      amount = 1,
      name = "oxide-asteroid-chunk",
      probability = 0.4,
      type = "item"
    }
  }
  data.raw.recipe["advanced-carbonic-asteroid-crushing"].results = {
    {
      amount = 6,
      name = "carbon",
      type = "item"
    },
    {
      amount = 3,
      name = "sulfur",
      type = "item"
    }
  }
  data.raw.recipe["metallic-asteroid-crushing"].results = {
    {
      amount = 25,
      name = "iron-ore",
      type = "item"
    }
  }
  data.raw.recipe["metallic-asteroid-reprocessing"].results = {
    {
      amount = 1,
      name = "carbonic-asteroid-chunk",
      probability = 0.4,
      type = "item"
    },
    {
      amount = 1,
      name = "oxide-asteroid-chunk",
      probability = 0.4,
      type = "item"
    }
  }
  data.raw.recipe["advanced-metallic-asteroid-crushing"].results = {
    {
      amount = 12,
      name = "iron-ore",
      type = "item"
    },
    {
      amount = 5,
      name = "copper-ore",
      type = "item"
    }
  }
  data.raw.recipe["oxide-asteroid-crushing"].results = {
    {
      amount = 6,
      name = "ice",
      type = "item"
    }
  }
  data.raw.recipe["oxide-asteroid-reprocessing"].results = {
    {
      amount = 1,
      name = "metallic-asteroid-chunk",
      probability = 0.4,
      type = "item"
    },
    {
      amount = 1,
      name = "carbonic-asteroid-chunk",
      probability = 0.4,
      type = "item"
    }
  }
  data.raw.recipe["advanced-oxide-asteroid-crushing"].results = {
    {
      amount = 4,
      name = "ice",
      type = "item"
    },
    {
      amount = 3,
      name = "calcite",
      type = "item"
    }
  }
end

if settings.startup["sssa-planet-distance-scale"].value ~= 1 then
  local connection_table = data.raw["space-connection"]
  for _,connection in pairs(connection_table) do
    connection.length = connection.length * settings.startup["sssa-planet-distance-scale"].value
  end
end

-- ************************************************
-- ******************** Nauvis ********************
-- ************************************************
if settings.startup["sssa-remove-nauvis-location-requirements"].value then
  data.raw.lab["biolab"].surface_conditions = nil
  data.raw["assembling-machine"]["captive-biter-spawner"].surface_conditions = nil
end
if settings.startup["sssa-capture-rocket-no-bioflux"].value then
  local t = data.raw.recipe["capture-robot-rocket"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "bioflux" then
          t[i].name = "nutrients"
      end
    end
  end
  t = data.raw.recipe["capture-robot-rocket-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "bioflux" then
          t[i].name = "nutrients"
      end
    end
  end
  --[[data.raw.recipe["capture-robot-rocket"].ingredients = {
    {
      amount = 1,
      name = "flying-robot-frame",
      type = "item"
    },
    {
      amount = 2,
      name = "steel-plate",
      type = "item"
    },
    {
      amount = 20,
      name = "nutrients",
      type = "item"
    },
    {
      amount = 2,
      name = "processing-unit",
      type = "item"
    }
  }]]
end
if settings.startup["sssa-captured-biters-food-type"].value == "Nutrients" then
  data.raw["assembling-machine"]["captive-biter-spawner"].energy_source.burner_usage = "nutrients"
  data.raw["assembling-machine"]["captive-biter-spawner"].energy_source.fuel_categories = {"nutrients"}
elseif settings.startup["sssa-captured-biters-food-type"].value == "Either" then
  data.raw["assembling-machine"]["captive-biter-spawner"].energy_source.fuel_categories = {"nutrients", "food"}
--elseif settings.startup["sssa-captured-biters-food-type"].value == "None" then --Removed for errors
  --data.raw["assembling-machine"]["captive-biter-spawner"].energy_usage = nil
  --data.raw["assembling-machine"]["captive-biter-spawner"].energy_source = nil
end

if settings.startup["sssa-nauvis-asteroid-scale"].value ~= 1 then
  local t = data.raw.planet.nauvis.asteroid_spawn_definitions
  local m = settings.startup["sssa-nauvis-asteroid-scale"].value
  if t ~= nil then
    for i=#t,1,-1 do
      t[i].probability = t[i].probability * m
    end
  end
end

-- ************************************************
-- ******************* Vulcanus *******************
-- ************************************************
if settings.startup["sssa-remove-vulcanus-location-requirements"].value then
    data.raw.recipe["foundry"].surface_conditions = nil
    data.raw.recipe["big-mining-drill"].surface_conditions = nil
    data.raw.recipe["turbo-transport-belt"].surface_conditions = nil
    data.raw.recipe["turbo-underground-belt"].surface_conditions = nil
    data.raw.recipe["turbo-splitter"].surface_conditions = nil
end
if settings.startup["sssa-remove-vulcanus-material-requirements-foundry"].value == "Remove" or settings.startup["sssa-remove-vulcanus-material-requirements-foundry"].value == "Replace" then
  local t = data.raw.recipe["foundry"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-carbide" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-foundry"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
    end
  end
  t = data.raw.recipe["foundry-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-carbide" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-foundry"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
    end
  end
end
if settings.startup["sssa-remove-vulcanus-material-requirements-bmd"].value == "Remove" or settings.startup["sssa-remove-vulcanus-material-requirements-bmd"].value == "Replace" then
  local t = data.raw.recipe["big-mining-drill"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-carbide" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-bmd"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
    end
  end
  t = data.raw.recipe["big-mining-drill-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-carbide" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-bmd"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
    end
  end
end
if settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Remove" or settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Replace" then
  -- Belt
  local t = data.raw.recipe["turbo-transport-belt"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-plate" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Remove" then
        table.remove(t, i)
        else
        t[i].name = "steel-plate"
        end
      end
    end
  end
  t = data.raw.recipe["turbo-transport-belt-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-plate" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Remove" then
        table.remove(t, i)
        else
        t[i].name = "steel-plate"
        end
      end
    end
  end

  -- Undie
  t = data.raw.recipe["turbo-underground-belt"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-plate" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Remove" then
        table.remove(t, i)
        else
        t[i].name = "steel-plate"
        end
      end
    end
  end
  t = data.raw.recipe["turbo-underground-belt-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-plate" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Remove" then
        table.remove(t, i)
        else
        t[i].name = "steel-plate"
        end
      end
    end
  end

  -- Splitter
  t = data.raw.recipe["turbo-splitter"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-plate" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Remove" then
        table.remove(t, i)
        else
        t[i].name = "steel-plate"
        end
      end
    end
  end
  t = data.raw.recipe["turbo-splitter-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "tungsten-plate" then
        if settings.startup["sssa-remove-vulcanus-material-requirements-belts"].value == "Remove" then
        table.remove(t, i)
        else
        t[i].name = "steel-plate"
        end
      end
    end
  end
end
if settings.startup["sssa-remove-calcite-from-melting-ores"].value then
    data.raw.recipe["molten-copper"].ingredients = {
        {
            amount = 50,
            name = "copper-ore",
            type = "item"
        }
    }
    data.raw.recipe["molten-iron"].ingredients = {
        {
            amount = 50,
            name = "iron-ore",
            type = "item"
        }
    }
end
if settings.startup["sssa-remove-calcite-from-lava-metals"].value then
    data.raw.recipe["molten-copper-from-lava"].ingredients = {
      {
        amount = 500,
        name = "lava",
        type = "fluid"
      }
    }
    data.raw.recipe["molten-iron-from-lava"].ingredients = {
      {
        amount = 500,
        name = "lava",
        type = "fluid"
      }
    }
end
if settings.startup["sssa-revert-artillery-recipes"].value then
    data.raw.recipe["artillery-shell"].ingredients = {
        {
          amount = 1,
          name = "radar",
          type = "item"
        },
        {
          amount = 4,
          name = "explosive-cannon-shell",
          type = "item"
        },
        {
          amount = 8,
          name = "explosives",
          type = "item"
        }
    }
    data.raw.recipe["artillery-shell-recycling"].results = {
      {
        amount = 0.25,
        extra_count_fraction = 0.25,
        name = "radar",
        type = "item"
      },
      {
        amount = 1,
        extra_count_fraction = 0,
        name = "explosive-cannon-shell",
        type = "item"
      },
      {
        amount = 2,
        extra_count_fraction = 0,
        name = "explosives",
        type = "item"
      }
    }
    data.raw.recipe["artillery-turret"].ingredients = {
        {
            amount = 60,
            name = "steel-plate",
            type = "item"
        },
        {
            amount = 60,
            name = "concrete",
            type = "item"
        },
        {
            amount = 40,
            name = "iron-gear-wheel",
            type = "item"
        },
        {
            amount = 20,
            name = "advanced-circuit",
            type = "item"
        }
    }
    data.raw.recipe["artillery-turret-recycling"].results = {
      {
          amount = 15,
          extra_count_fraction=0,
          name = "steel-plate",
          type = "item"
      },
      {
          amount = 15,
          extra_count_fraction=0,
          name = "concrete",
          type = "item"
      },
      {
          amount = 10,
          extra_count_fraction=0,
          name = "iron-gear-wheel",
          type = "item"
      },
      {
          amount = 5,
          extra_count_fraction=0,
          name = "advanced-circuit",
          type = "item"
      }
    }
    data.raw.recipe["artillery-wagon"].ingredients = {
        {
            amount = 64,
            name = "engine-unit",
            type = "item"
        },
        {
            amount = 10,
            name = "iron-gear-wheel",
            type = "item"
        },
        {
            amount = 40,
            name = "steel-plate",
            type = "item"
        },
        {
            amount = 16,
            name = "pipe",
            type = "item"
        },
        {
            amount = 20,
            name = "advanced-circuit",
            type = "item"
        }
    }
    data.raw.recipe["artillery-wagon-recycling"].results = {
      {
          amount = 16,
          extra_count_fraction = 0,
          name = "engine-unit",
          type = "item"
      },
      {
          amount = 2.5,
          extra_count_fraction = 0.5,
          name = "iron-gear-wheel",
          type = "item"
      },
      {
          amount = 10,
          extra_count_fraction = 0,
          name = "steel-plate",
          type = "item"
      },
      {
          amount = 4,
          extra_count_fraction = 0,
          name = "pipe",
          type = "item"
      },
      {
          amount = 5,
          extra_count_fraction = 0,
          name = "advanced-circuit",
          type = "item"
      }
  }
end

-- *************************************************
-- ******************** Fulgora ********************
-- *************************************************
if settings.startup["sssa-remove-fulgora-location-requirements"].value then
    data.raw.recipe["electromagnetic-plant"].surface_conditions = nil
    data.raw.recipe["recycler"].surface_conditions = nil
end
if settings.startup["sssa-remove-fulgora-material-requirements-emp"].value == "Remove" or settings.startup["sssa-remove-fulgora-material-requirements-emp"].value == "Replace" then
  local t = data.raw.recipe["electromagnetic-plant"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "holmium-plate" then
        if settings.startup["sssa-remove-fulgora-material-requirements-emp"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "iron-plate"
        end
      end
    end
  end
  t = data.raw.recipe["electromagnetic-plant-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "holmium-plate" then
        if settings.startup["sssa-remove-fulgora-material-requirements-emp"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "iron-plate"
        end
      end
    end
  end
end
if settings.startup["sssa-remove-stone-from-liquid-recipes"].value then
    data.raw.recipe["electrolyte"].ingredients = {
        {
          amount = 10,
          name = "heavy-oil",
          type = "fluid"
        },
        {
          amount = 10,
          name = "holmium-solution",
          type = "fluid"
        }
    }
    data.raw.recipe["holmium-solution"].ingredients = {
        {
          amount = 2,
          name = "holmium-ore",
          type = "item"
        },
        {
          amount = 10,
          name = "water",
          type = "fluid"
        }
    }
end

-- *************************************************
-- ********************* Gleba *********************
-- *************************************************
if settings.startup["sssa-remove-gleba-location-requirements"].value then
  data.raw.recipe["biochamber"].surface_conditions = nil
end

if settings.startup["sssa-remove-gleba-material-requirements-biochamber"].value == "Remove" or settings.startup["sssa-remove-gleba-material-requirements-biochamber"].value == "Replace" then
  local t = data.raw.recipe["biochamber"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "pentapod-egg" then
        if settings.startup["sssa-remove-gleba-material-requirements-biochamber"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "biter-egg"
        end
      end
    end
  end
  t = data.raw.recipe["biochamber-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "pentapod-egg" then
        if settings.startup["sssa-remove-gleba-material-requirements-biochamber"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "biter-egg"
        end
      end
    end
  end
end

if settings.startup["sssa-remove-gleba-material-requirements-inserter"].value == "Remove" or settings.startup["sssa-remove-gleba-material-requirements-inserter"].value == "Replace" then
  local t = data.raw.recipe["stack-inserter"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "carbon-fiber" then
        if settings.startup["sssa-remove-gleba-material-requirements-inserter"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
      if t[i] ~= nil and t[i].name == "jelly" then
        table.remove(t, i)
      end
    end
  end
  t = data.raw.recipe["stack-inserter-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "carbon-fiber" then
        if settings.startup["sssa-remove-gleba-material-requirements-inserter"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
      if t[i] ~= nil and t[i].name == "jelly" then
        table.remove(t, i)
      end
    end
  end
end

if settings.startup["sssa-gleba-science-lifetime-multiplier"].value ~= 1 then
  local m = settings.startup["sssa-gleba-science-lifetime-multiplier"].value
  if m == 0 then
    data.raw.tool["agricultural-science-pack"].spoil_ticks = nil
  else
    data.raw.tool["agricultural-science-pack"].spoil_ticks = data.raw.tool["agricultural-science-pack"].spoil_ticks * m
  end
end

if settings.startup["sssa-gleba-science-no-spoilage-result"].value then
  data.raw.tool["agricultural-science-pack"].spoil_result = nil
end

if settings.startup["sssa-gleba-agriculture-anywhere"].value then
  data.raw.item["artificial-jellynut-soil"].place_as_tile.condition_size = 1
  data.raw.item["artificial-jellynut-soil"].place_as_tile.tile_condition = data.raw.item["overgrowth-jellynut-soil"].place_as_tile.tile_condition
  data.raw.item["artificial-jellynut-soil"].place_as_tile.condition.layers = data.raw.item["overgrowth-jellynut-soil"].place_as_tile.condition.layers
  data.raw.item["artificial-yumako-soil"].place_as_tile.condition_size = 1
  data.raw.item["artificial-yumako-soil"].place_as_tile.tile_condition = data.raw.item["overgrowth-yumako-soil"].place_as_tile.tile_condition
  data.raw.item["artificial-yumako-soil"].place_as_tile.condition.layers = data.raw.item["overgrowth-yumako-soil"].place_as_tile.condition.layers
  data.raw.item["overgrowth-jellynut-soil"].place_as_tile.condition_size = 1
  data.raw.item["overgrowth-jellynut-soil"].place_as_tile.tile_condition = nil
  data.raw.item["overgrowth-jellynut-soil"].place_as_tile.condition.layers = {}
  data.raw.item["overgrowth-yumako-soil"].place_as_tile.condition_size = 1
  data.raw.item["overgrowth-yumako-soil"].place_as_tile.tile_condition = nil
  data.raw.item["overgrowth-yumako-soil"].place_as_tile.condition.layers = {}
  --[[data.raw.item["artificial-jellynut-soil"].place_as_tile.condition_size = 1
  data.raw.item["artificial-jellynut-soil"].place_as_tile.tile_condition = nil
  data.raw.item["artificial-jellynut-soil"].place_as_tile.condition.layers = {water_tile = true, ground_tile = true}
  data.raw.item["artificial-yumako-soil"].place_as_tile.condition_size = 1
  data.raw.item["artificial-yumako-soil"].place_as_tile.tile_condition = nil
  data.raw.item["artificial-yumako-soil"].place_as_tile.condition.layers = {water_tile = true, ground_tile = true}]]
end
-- ************************************************
-- ******************** Aquilo ********************
-- ************************************************

if settings.startup["sssa-remove-aquilo-location-requirements"].value then
  data.raw.recipe["cryogenic-plant"].surface_conditions = nil
  data.raw.recipe["quantum-processor"].surface_conditions = nil
  data.raw.recipe["fusion-generator"].surface_conditions = nil
  data.raw.recipe["fusion-reactor"].surface_conditions = nil
end
if settings.startup["sssa-remove-planetary-material-requirements-cryo"].value ~= "No Change" then
  local t = data.raw.recipe["cryogenic-plant"].ingredients
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "superconductor" then
        if settings.startup["sssa-remove-planetary-material-requirements-cryo"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
      if t[i] ~= nil and t[i].name == "lithium-plate" then
        if settings.startup["sssa-remove-planetary-material-requirements-cryo"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "iron-plate"
        end
      end
    end
  end
  t = data.raw.recipe["cryogenic-plant-recycling"].results
  if t ~= nil then
    for i=#t,1,-1 do
      if t[i].name == "superconductor" then
        if settings.startup["sssa-remove-planetary-material-requirements-cryo"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "plastic-bar"
        end
      end
      if t[i] ~= nil and t[i].name == "lithium-plate" then
        if settings.startup["sssa-remove-planetary-material-requirements-cryo"].value == "Remove" then
          table.remove(t, i)
        else
          t[i].name = "iron-plate"
        end
      end
    end
  end
end
if settings.startup["sssa-easy-ice-platforms"].value then
    data.raw.recipe["ice-platform"].results = {
        {
            amount = 10,
            name = "ice-platform",
            type = "item"
        }
    }
end
if settings.startup["sssa-easy-foundations"].value then
    --data.raw.item["foundation"].stack_size = 100
    data.raw.item["foundation"].weight = 10000
    data.raw.recipe["foundation"].results = {
        {
            amount = 10,
            name = "foundation",
            type = "item"
        }
    }
end
if settings.startup["sssa-alternate-foundation-recipe"].value ~= "No Change" then
  if settings.startup["sssa-alternate-foundation-recipe"].value == "Complex (Nauvis)" then
    data.raw.recipe["foundation"].ingredients = {
      {
        amount = 4,
        name = "steel-plate",
        type = "item"
      },
      {
        amount = 4,
        name = "iron-plate",
        type = "item"
      },
      {
        amount = 10,
        name = "concrete",
        type = "item"
      },
      {
        amount = 20,
        name = "stone",
        type = "item"
      },
      {
        amount = 20,
        name = "water",
        type = "fluid"
      }
    }
    data.raw.recipe["foundation-recycling"].results = {
      {
        amount = 1,
        extra_count_fraction = 0,
        name = "steel-plate",
        type = "item"
      },
      {
        amount = 1,
        extra_count_fraction = 0,
        name = "iron-plate",
        type = "item"
      },
      {
        amount = 2.5,
        extra_count_fraction = 0.5,
        name = "concrete",
        type = "item"
      },
      {
        amount = 5,
        extra_count_fraction = 0,
        name = "stone",
        type = "item"
      },
      {
        amount = 5,
        extra_count_fraction = 0,
        name = "water",
        type = "fluid"
      }
    }
  elseif settings.startup["sssa-alternate-foundation-recipe"].value == "Simple (Nauvis)" then
    data.raw.recipe["foundation"].ingredients = {
      {
        amount = 4,
        name = "steel-plate",
        type = "item"
      },
      {
        amount = 20,
        name = "stone",
        type = "item"
      },
      {
        amount = 20,
        name = "water",
        type = "fluid"
      }
    }
    data.raw.recipe["foundation-recycling"].results = {
      {
        amount = 1,
        extra_count_fraction = 0,
        name = "steel-plate",
        type = "item"
      },
      {
        amount = 5,
        extra_count_fraction = 0,
        name = "stone",
        type = "item"
      },
      {
        amount = 5,
        extra_count_fraction = 0,
        name = "water",
        type = "fluid"
      }
    }
  end
end