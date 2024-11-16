data:extend({
    -- General settings a
    {
        type = "bool-setting",
        name = "sssa-unlock-all-qualities",
        setting_type = "startup",
        default_value = false,
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
        name = "sssa-quality-module-no-superconductor",
        setting_type = "startup",
        default_value = true,
        order = "aabb"
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
    --[[{
        type = "bool-setting",
        name = "sssa-nutrients-burnable",
        setting_type = "startup",
        default_value = false,
        order = "aai"
    },]]
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
    {
        type = "double-setting",
        name = "sssa-asteroid-health-multiplier",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.01,
        maximum_value = 1000,
        order = "caa"
    },
    {
        name = "sssa-downgrade-asteroid-defenses",
        type = "int-setting",
        default_value = 0,
        minimum_value = -4,
        maximum_value = 4,
        setting_type = "startup",
        order = "cab"
    },
    {
        type = "bool-setting",
        name = "sssa-allow-chests-in-space",
        setting_type = "startup",
        default_value = true,
        order = "cac"
    },
    {
        type = "bool-setting",
        name = "sssa-allow-roboports-in-space",
        setting_type = "startup",
        default_value = true,
        order = "cad"
    },

    -- Vulcanus Settings d
    {
        type = "bool-setting",
        name = "sssa-remove-vulcanus-location-requirements",
        setting_type = "startup",
        default_value = true,
        order = "daa"
    },
    {
        name = "sssa-remove-vulcanus-material-requirements-foundry",
        type = "string-setting",
        default_value = "Replace",
        allowed_values = {"No Change", "Replace", "Remove"},
        setting_type = "startup",
        order = "daba"
    },
    {
        name = "sssa-remove-vulcanus-material-requirements-bmd",
        type = "string-setting",
        default_value = "Replace",
        allowed_values = {"No Change", "Replace", "Remove"},
        setting_type = "startup",
        order = "dabb"
    },
    {
        name = "sssa-remove-vulcanus-material-requirements-belts",
        type = "string-setting",
        default_value = "Replace",
        allowed_values = {"No Change", "Replace", "Remove"},
        setting_type = "startup",
        order = "dabc"
    },
    {
        type = "bool-setting",
        name = "sssa-remove-calcite-from-melting-ores",
        setting_type = "startup",
        default_value = true,
        order = "daca"
    },
    {
        type = "bool-setting",
        name = "sssa-remove-calcite-from-lava-metals",
        setting_type = "startup",
        default_value = false,
        order = "dacb"
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
        name = "sssa-remove-fulgora-material-requirements-emp",
        type = "string-setting",
        default_value = "Replace",
        allowed_values = {"No Change", "Replace", "Remove"},
        setting_type = "startup",
        order = "eaba"
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
        name = "sssa-remove-gleba-material-requirements-biochamber",
        type = "string-setting",
        default_value = "Remove",
        allowed_values = {"No Change", "Replace", "Remove"},
        setting_type = "startup",
        order = "faba"
    },
    {
        name = "sssa-remove-gleba-material-requirements-inserter",
        type = "string-setting",
        default_value = "Replace",
        allowed_values = {"No Change", "Replace", "Remove"},
        setting_type = "startup",
        order = "fabb"
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
    {
        type = "bool-setting",
        name = "sssa-remove-aquilo-location-requirements",
        setting_type = "startup",
        default_value = true,
        order = "gaa"
    },
    {
        name = "sssa-remove-planetary-material-requirements-cryo",
        type = "string-setting",
        default_value = "Replace",
        allowed_values = {"No Change", "Replace", "Remove"},
        setting_type = "startup",
        order = "gab"
    },
    {
        name = "sssa-easy-foundations",
        type = "bool-setting",
        setting_type = "startup",
        default_value = true,
        order = "gac"
    },
    {
        name = "sssa-alternate-foundation-recipe",
        type = "string-setting",
        default_value = "No Change",
        allowed_values = {"No Change", "Complex (Nauvis)", "Simple (Nauvis)"},
        setting_type = "startup",
        order = "gad"
    },
})