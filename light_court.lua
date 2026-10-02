ShopsAndContracts.register_shop({
    key = "light_court",

    appearance = {
        name = "THE LIGHT COURT",
        title_colours = {G.C.YELLOW, G.C.WHITE, G.C.GOLD},
        background_colour = {0.15, 0.12, 0.04, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.light_suit_hands >= 20 or false
    end,

    jokers = {
        "j_paperback_black_star",
        "j_paperback_blue_star",
        "j_paperback_the_sun",
        "j_paperback_the_sun_rises",
        "j_paperback_angel_investor",
        "j_paperback_white_night",
        "j_paperback_red_sun_in_the_sky",
        "j_paperback_shooting_star",
        "j_paperback_solar_eclipse",
        "j_paperback_ampersand",
        "j_paperback_aurora_borealis",
    },

    consumables = {
        "c_paperback_ace_of_cups",
        "c_paperback_ace_of_pentacles",
        "c_paperback_apostle_of_cups",
        "c_paperback_apostle_of_pentacles",
        "c_fool",
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