ShopsAndContracts.register_shop({
    key = "celestial_observatory",

    appearance = {
        name = "THE CELESTIAL OBSERVATORY",
        title_colours = {G.C.BLUE, G.C.PURPLE, G.C.WHITE},
        background_colour = {0.13, 0.2, 0.1, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.boosters.celestial_opened >= 10 or false
    end,

    jokers = {
        "j_constellation",
        "j_space",
        "j_astronomer",
        "j_satellite",
        "j_paperback_stella_octangula",
        "j_paperback_solar_system",
        "j_paperback_full_moon",
        "j_paperback_moon_waltz",
        "j_paperback_triple_moon_goddess",
        "j_paperback_satellite_array",
    },

    consumables = {
        "c_bunc_sky",
        "c_bunc_haumea",
        "c_bunc_makemake",
        "c_bunc_quaoar",
        "c_bunc_sedna",
        "c_pluto",
        "c_ceres",
        "c_eris",
    },

    boosters = {
        "p_celestial_normal_1",
        "p_celestial_jumbo_1",
        "p_celestial_mega_1",
        "p_celestial_normal_2",
        "p_celestial_normal_3",
        "p_celestial_normal_4",
        "p_celestial_jumbo_2",
        "p_celestial_mega_2",
    
    },

    vouchers = {
        "v_telescope",
        "v_observatory",
        "v_planet_tycoon",
        "v_betm_vouchers_gravitational_wave",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})