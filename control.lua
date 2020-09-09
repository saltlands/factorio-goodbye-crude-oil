
local game -- = _G.game, but _G.game is not available until on_init is called.

-- on_init runs when the game starts, or when adding a mod to an existing game.
script.on_init(function(_event)
    -- Abort if we've already initialized, or the game table is not ready yet.
    if game or not _G.game then
        return
    end
    game = _G.game

    -- Remove all crude oil. TODO: Make a map generator do this instead.
    for _, e in pairs(game.surfaces.nauvis.find_entities_filtered{name='crude-oil'}) do
        e.destroy()
    end

    -- Prevent new resources from showing up.
    game.surfaces.nauvis.map_gen_settings.autoplace_controls['crude-oil'].frequency = 0
end)
