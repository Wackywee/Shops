ShopsAndContracts.register_shop({
    key = "discard_house",

    appearance = {
        name = "THE DISCARD HOUSE",
        title_colours = {G.C.RED, G.C.ORANGE, G.C.GREY},
        background_colour = {0.25, 0.08, 0.04, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.discards.total >= 30 or false
    end,

    jokers = {
        "j_riff_raff",
        "j_burglar",
        "j_madness",
        "j_vampire",
        "j_castle",
        "j_paperback_fodder",
        "j_paperback_everything_must_go",
        "j_paperback_discard",
        "j_paperback_roulette",
        "j_bunc_vandalism",
    },

    consumables = {
        "c_hanged_man",
        "c_death",
        "c_bunc_abyss",
        "c_bunc_cleanse",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
        "p_standard_normal_2",
        "p_bunc_blind_1",
    },

    vouchers = {
        "v_wasteful",
        "v_grabber",
        "v_betm_vouchers_recycle_area",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})