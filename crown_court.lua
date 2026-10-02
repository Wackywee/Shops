ShopsAndContracts.register_shop({
    key = "crown_court",

    appearance = {
        name = "THE CROWN COURT",
        title_colours = {G.C.GOLD, G.C.YELLOW, G.C.RED},
        background_colour = {0.5, 0.38, 0.1, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.crown_scored >= 40 or false
    end,

    jokers = {
        "j_paperback_king_me",
        "j_paperback_the_dynasty",
        "j_baron",
        "j_triboulet",
        "j_paperback_jacks",
        "j_shoot_the_moon",
    },

    consumables = {
        "c_paperback_king_of_cups",
        "c_paperback_king_of_pentacles",
        "c_paperback_king_of_swords",
        "c_paperback_king_of_wands",
        "c_strength",
        "c_death",
    },

    boosters = {
        "p_standard_normal_2",
        "p_standard_jumbo_2",
    },

    vouchers = {
        "v_betm_vouchers_round_up",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 1}
})