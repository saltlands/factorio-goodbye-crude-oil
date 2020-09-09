_G.data:extend{{
    type = "recipe",
    name = "coal-compaction",
    icon = "__goodbye-crude-oil__/graphics/recipe-compaction.png",
    icon_size = 64,
    ingredients = {
        {type = "item", name = "coal", amount = 10},
        -- heavy
        {type = "fluid", name = "steam", amount = 50, fluidbox_index = 2},
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 0.25, fluidbox_index = 1},
        -- light
        {type = "fluid", name = "petroleum-gas", amount = 10, fluidbox_index = 3},
    },
    category = "oil-processing",
    subgroup = "fluid-recipes",
    energy_required = 5, -- Seconds
}}
