ShopsAndContracts.register_shop({
    key = "pack_rat",

    appearance = {
        name = "THE PACK RAT",
        title_colours = {G.C.ORANGE, G.C.BROWN, G.C.GOLD},
        background_colour = {0.13, 0.06, 0.02, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.boosters.opened >= 40 or false
    end,

    jokers = {
        "j_burglar",
        "j_joker",
        "j_bunc_jmjb",
        "j_bunc_headache",
        "j_paperback_backpack",
        "j_paperback_shopkeep",
        "j_bunc_bierdeckel",
        "j_paperback_collector",
        "j_paperback_master_plan",
    },

    consumables = {
        "c_bunc_art",
        "c_bunc_universe",
        "c_fool",
        "c_wheel_of_fortune",
    },

    boosters = {
        "p_standard_normal_1",
        "p_arcana_normal_1",
        "p_celestial_normal_1",
        "p_spectral_normal_1",
        "p_buffoon_normal_1",
        "p_bunc_virtual_1",
        "p_arcana_normal_2",
        "p_celestial_normal_2",
        "p_spectral_normal_2",
        "p_standard_normal_2",
        "p_buffoon_normal_2",
        "p_paperback_ego_gift_normal_1",
        "p_paperback_minor_arcana_normal_1",
        "p_bunc_blind_2",
        "p_bunc_virtual_2",
    
    },

    vouchers = {
        "v_overstock_norm",
        "v_overstock_plus",
        "v_betm_vouchers_3d_boosters",
        "v_betm_vouchers_4d_boosters",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})