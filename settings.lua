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
        type = "double-setting",
        name = "sssa-nutrients-lifetime-multiplier",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0,
        maximum_value = 100,
        order = "aag"
    },
    {
        type = "bool-setting",
        name = "sssa-nutrients-no-spoilage-result",
        setting_type = "startup",
        default_value = false,
        order = "aah"
    },
    {
        type = "bool-setting",
        name = "sssa-nutrients-burnable",
        setting_type = "startup",
        default_value = false,
        order = "aai"
    },
    -- Nauvis Settings b
    {
        type = "bool-setting",
        name = "sssa-remove-nauvis-location-requirements",
        setting_type = "startup",
        default_value = true,
        order = "baa"
    },
    {
        type = "bool-setting",
        name = "sssa-capture-rocket-no-bioflux",
        setting_type = "startup",
        default_value = true,
        order = "bab"
    },
    {
        name = "sssa-captured-biters-food-type",
        type = "string-setting",
        default_value = "Either",
        allowed_values = {"Bioflux (No Change)", "Nutrients", "Either"}, --Removed "None" because of errors
        setting_type = "startup",
        order = "bac"
    },

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
        name = "sssa-remove-vulcanus-material-requirements",
        setting_type = "startup",
        default_value = true,
        order = "dab"
    },
    {
        type = "bool-setting",
        name = "sssa-remove-calcite-from-melting-ores",
        setting_type = "startup",
        default_value = true,
        order = "dac"
    },
    {
        type = "bool-setting",
        name = "sssa-revert-artillery-recipes",
        setting_type = "startup",
        default_value = true,
        order = "dad"
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
        name = "sssa-remove-fulgora-material-requirements",
        setting_type = "startup",
        default_value = true,
        order = "eab"
    },
    {
        type = "bool-setting",
        name = "sssa-remove-stone-from-liquid-recipes",
        setting_type = "startup",
        default_value = false,
        order = "eac"
    },

    -- Gleba Settings f
    {
        type = "bool-setting",
        name = "sssa-remove-gleba-location-requirements",
        setting_type = "startup",
        default_value = true,
        order = "faa"
    },
    {
        type = "bool-setting",
        name = "sssa-remove-biochamber-pentapod-requirement",
        setting_type = "startup",
        default_value = true,
        order = "fab"
    },
    {
        type = "double-setting",
        name = "sssa-gleba-science-lifetime-multiplier",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0,
        maximum_value = 100,
        order = "fac"
    },
    {
        type = "bool-setting",
        name = "sssa-gleba-science-no-spoilage-result",
        setting_type = "startup",
        default_value = false,
        order = "fad"
    },
    {
        type = "bool-setting",
        name = "sssa-gleba-agriculture-anywhere",
        setting_type = "startup",
        default_value = false,
        order = "fae"
    },
    -- Aquilo Settings g
})