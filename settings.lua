data:extend({
    -- General settings a
    {
        type = "bool-setting",
        name = "sssa-unlock-all-qualities",
        setting_type = "startup",
        default_value = true,
        order = "aaa"
    },
    {
        type = "bool-setting",
        name = "sssa-revert-module-recipes",
        setting_type = "startup",
        default_value = true,
        order = "aab"
    },
    {
        type = "bool-setting",
        name = "sssa-revert-cliff-explosive-recipe",
        setting_type = "startup",
        default_value = true,
        order = "aac"
    },
    {
        type = "int-setting",
        name = "sssa-rocket-parts-per-rocket",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 1000,
        order = "aad"
    },
    {
        type = "bool-setting",
        name = "sssa-rockets-only-need-fuel",
        setting_type = "startup",
        default_value = false,
        order = "aae"
    },
    {
        type = "bool-setting",
        name = "sssa-easy-space-foundations",
        setting_type = "startup",
        default_value = true,
        order = "aae"
    },
    {
        type = "bool-setting",
        name = "sssa-pld-nerf-revert",
        setting_type = "startup",
        default_value = false,
        order = "aaf"
    },
    {
        type = "bool-setting",
        name = "sssa-easter-egg",
        setting_type = "startup",
        default_value = true,
        order = "azz"
    },
    -- Nauvis Settings b
    -- Space Settings c
    -- Vulcanus Settings d
    {
        type = "bool-setting",
        name = "sssa-remove-vulcanus-location-requirements",
        setting_type = "startup",
        default_value = true,
        order = "daa"
    },
    {
        type = "bool-setting",
        name = "sssa-remove-calcite-from-melting-ores",
        setting_type = "startup",
        default_value = true,
        order = "dab"
    },
    {
        type = "bool-setting",
        name = "sssa-revert-artillery-recipes",
        setting_type = "startup",
        default_value = true,
        order = "dac"
    },
    -- Fulgora Settings e
    {
        type = "bool-setting",
        name = "sssa-remove-fulgora-location-requirements",
        setting_type = "startup",
        default_value = true,
        order = "eaa"
    },
    {
        type = "bool-setting",
        name = "sssa-remove-stone-from-liquid-recipes",
        setting_type = "startup",
        default_value = false,
        order = "eab"
    },
    -- Gleba Settings f
    
    {
        type = "int-setting",
        name = "sssa-gleba-science-lifetime-multiplier",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0,
        maximum_value = 100,
        order = "faa"
    },
    {
        type = "bool-setting",
        name = "sssa-gleba-science-no-spoilage-result",
        setting_type = "startup",
        default_value = false,
        order = "fab"
    },
    {
        type = "bool-setting",
        name = "sssa-gleba-agriculture-anywhere",
        setting_type = "startup",
        default_value = false,
        order = "fab"
    },
    -- Aquilo Settings g
})