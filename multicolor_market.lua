ShopsAndContracts.register_shop({
    key = "multicolor_market",

    appearance = {
        name = "THE MULTICOLOR MARKET",
        title_colours = {G.C.RED, G.C.BLUE, G.C.GREEN},
        background_colour = {0.09, 0.06, 0.12, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.multicolor_hands >= 15 or false
    end,

    jokers = {
        "j_flower_pot",
        "j_seeing_double",
        "j_smeared",
        "j_four_fingers",
        "j_paperback_prism",
        "j_bunc_mosaic",
        "j_bunc_rasta",
        "j_bunc_voxel",
        "j_paperback_gambit",
        "j_paperback_ampersand",
        "j_paperback_black_rainbows",
        "j_paperback_aurora_borealis",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_bunc_lust",
        "c_bunc_universe",
        "c_lovers",
        "c_wheel_of_fortune",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_palette",
        "v_bunc_disguise",
        "v_bunc_masquerade",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})