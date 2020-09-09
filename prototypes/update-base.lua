-- Remove pumpjack from oil-processing tech
local new_effects, tech = {}, _G.data.raw["technology"]["oil-processing"]
for _, effect in pairs(tech.effects) do
    if effect.type ~= "unlock-recipe" or (effect.recipe ~= "pumpjack" and effect.recipe ~= "basic-oil-processing") then
        table.insert(new_effects, effect)
    end
end
tech.effects = new_effects

-- Change oil-processing tech icon (it was a pumpjack, but that entity no longer exists)
tech.icon = "__goodbye-crude-oil__/graphics/tech-processing.png"

-- Remove advanced-oil-processing recipe from advanced-oil-processing tech
new_effects, tech = {}, _G.data.raw["technology"]["advanced-oil-processing"]
for _, effect in pairs(tech.effects) do
    if effect.type ~= "unlock-recipe" or effect.recipe ~= "advanced-oil-processing" then
        table.insert(new_effects, effect)
    end
end
tech.effects = new_effects

-- Remove oil barrels from fluid-handling tech
new_effects, tech = {}, _G.data.raw["technology"]["fluid-handling"]
for _, effect in pairs(tech.effects) do
    if effect.type ~= "unlock-recipe" or (effect.recipe ~= "fill-crude-oil-barrel" and effect.recipe ~= "empty-crude-oil-barrel") then
        table.insert(new_effects, effect)
    end
end
tech.effects = new_effects

-- Adjust requirements for coal-liquefaction tech
_G.data.raw["technology"]["coal-liquefaction"].unit.count = 75
_G.data.raw["technology"]["coal-liquefaction"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
}

-- Replace coal-liquefaction requirements
_G.data.raw["technology"]["coal-liquefaction"].prerequisites = {
    "coal-compaction",
    "chemical-science-pack",
}

