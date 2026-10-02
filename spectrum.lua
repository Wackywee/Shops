ShopsAndContracts.register_shop({
    key = "spectrum",

    appearance = {
        name = "THE SPECTRUM",
        title_colours = {G.C.RED, G.C.BLUE, G.C.GREEN},
        background_colour = {0.1, 0.04, 0.14, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and ShopsAndContracts.get_hand_count(stats, "Spectrum") >= 20 or false
    end,

    jokers = {
        "j_four_fingers",
        "j_smeared",
        "j_flower_pot",
        "j_seeing_double",
        "j_bunc_crop_circles",
        "j_paperback_prism",
        "j_bunc_mosaic",
        "j_bunc_rasta",
        "j_bunc_voxel",
        "j_paperback_ampersand",
        "j_paperback_black_rainbows",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_bunc_lust",
        "c_bunc_universe",
        "c_lovers",
    },

    boosters = {
        "p_bunc_blind_1",
        "p_bunc_virtual_1",
        "p_bunc_blind_2",
        "p_bunc_virtual_2",
        "p_bunc_virtual_jumbo",
        "p_bunc_virtual_mega",
    },

    vouchers = {
        "v_bunc_disguise",
        "v_bunc_masquerade",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})