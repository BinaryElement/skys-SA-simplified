
-- General
if settings.startup["sssa-unlock-all-qualities"].value then
    data.raw["technology"]["epic-quality"].hidden = true
    data.raw["technology"]["legendary-quality"].hidden = true
    data.raw["technology"]["automation"].effects = {
        {
          recipe = "assembling-machine-1",
          type = "unlock-recipe"
        },
        {
          recipe = "long-handed-inserter",
          type = "unlock-recipe"
        },
        {
          quality = "uncommon",
          type = "unlock-quality"
        },
        {
          quality = "rare",
          type = "unlock-quality"
        },
        {
          quality = "epic",
          type = "unlock-quality"
        },
        {
          quality = "legendary",
          type = "unlock-quality"
        }
    }
    data.raw["technology"]["quality-module"].effects = {
        {
          recipe = "quality-module",
          type = "unlock-recipe"
        }
      }
end
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
if settings.startup["sssa-easter-egg"].value then
    local qm = table.deepcopy(data.raw.module["quality-module-3"])
    qm.name = "quality-module-3-sssa"
    qm.effect = {
        quality = 100,
        speed = 1.00
    }
    local qmsmelt = table.deepcopy(data.raw.recipe["iron-plate"])
    qm.name = "quality-module-3-sssa"
    qm.ingredients = {
        {
          amount = 1,
          name = "quality-module-1",
          type = "item"
        }
    }
    qm.results = {
        {
          amount = 1,
          name = "quality-module-3-sssa",
          type = "item"
        }
    }
    data:extend({qm, qmsmelt})
end

-- Space

-- Nauvis

-- Vulcanus
if settings.startup["sssa-remove-vulcanus-location-requirements"].value then
    data.raw.recipe["foundry"].surface_conditions = nil
    data.raw.recipe["big-mining-drill"].surface_conditions = nil
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
    --[[data.raw.recipe["artillery-shell-recycling"].results = {
        {
            extra_count_fraction = 0.25,
            amount = 1,
            name = "radar",
            type = "item"
        },
        {
            extra_count_fraction = 0.25,
            amount = 4,
            name = "explosive-cannon-shell",
            type = "item"
        },
        {
            extra_count_fraction = 0.25,
            amount = 8,
            name = "explosives",
            type = "item"
        }
    }]]
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
end

-- Fulgora
if settings.startup["sssa-remove-fulgora-location-requirements"].value then
    data.raw.recipe["electromagnetic-plant"].surface_conditions = nil
    data.raw.recipe["recycler"].surface_conditions = nil
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

-- Gleba
-- Aquilo
