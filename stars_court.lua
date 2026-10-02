ShopsAndContracts.register_shop({
    key = "stars_court",

    appearance = {
        name = "THE STARS' COURT",
        title_colours = {G.C.GOLD, G.C.PURPLE, G.C.WHITE},
        background_colour = {0.1, 0.06, 0.16, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.special.star_scored >= 30 or false
    end,

    jokers = {
        "j_paperback_black_star",
        "j_paperback_blue_star",
        "j_paperback_shooting_star",
        "j_paperback_stella_octangula",
        "j_paperback_the_sun",
        "j_paperback_solar_eclipse",
        "j_paperback_red_sun_in_the_sky",
        "j_paperback_full_moon",
        "j_constellation",
        "j_paperback_satellite_array",
    },

    consumables = {
        "c_paperback_ace_of_wands",
        "c_paperback_ace_of_swords",
        "c_star",
        "c_sun",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_betm_vouchers_gravity_assist",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})