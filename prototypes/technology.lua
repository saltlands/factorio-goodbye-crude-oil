_G.data:extend{{
    type = "technology",
    name = "coal-compaction",
    icon = "__goodbye-crude-oil__/graphics/tech-compaction.png",
    icon_size = 128,
    order = "a",
    prerequisites = {"advanced-material-processing", "oil-processing"},
    effects = {{type = "unlock-recipe", recipe = "coal-compaction"}},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 30, -- seconds per pack
    },
}}
