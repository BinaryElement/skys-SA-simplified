-- *************************************************
-- ******************** General ********************
-- *************************************************
if settings.startup["sssa-unlock-all-qualities"].value then
    if data.raw.technology["epic-quality"] then
      data.raw["technology"]["epic-quality"].hidden = true
    end
    if data.raw.technology["legendary-quality"] then
      data.raw["technology"]["legendary-quality"].hidden = true
    end
    local automation = data.raw["technology"]["automation"]
    for i,tech in pairs(data.raw.technology) do
      if tech.name ~= "automation" and tech.effects ~= nil then
        for j,effect in pairs(tech.effects) do
          if effect.type == "unlock-quality" then
            table.insert(automation.effects, effect)
            tech.effects[j] = nil
            log("[SSSA] Quality unlock "..effect.quality.." moved from "..tech.name.." to "..automation.name)
          end
        end
      end
    end
  end