ShopsAndContracts.register_shop({
    key = "wild_hunt",

    appearance = {
        name = "THE WILD HUNT",
        title_colours = {G.C.GREEN, G.C.RED, G.C.GOLD},
        background_colour = {0.05, 0.13, 0.04, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.special.wild_scored >= 10 or false
    end,

    jokers = {
        "j_splash",
        "j_wee",
        "j_idol",
        "j_paperback_wild_plus_four",
        "j_paperback_wild_prize",
        "j_bunc_crop_circles",
        "j_pareidolia",
        "j_paperback_prism",
        "j_bunc_rasta",
    },

    consumables = {
        "c_lovers",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {},

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})