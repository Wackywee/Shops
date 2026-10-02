ShopsAndContracts.register_shop({
    key = "exotic_market",

    appearance = {
        name = "THE EXOTIC MARKET",
        title_colours = {G.C.ORANGE, G.C.PURPLE, G.C.GOLD},
        background_colour = {0.16, 0.07, 0.02, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.exotic_suit_hands >= 20 or false
    end,

    jokers = {
        "j_bunc_crop_circles",
        "j_bunc_aristocrat",
        "j_bunc_mosaic",
        "j_bunc_voxel",
        "j_paperback_prism",
        "j_bunc_rasta",
        "j_bunc_linocut",
        "j_paperback_gambit",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_bunc_art",
        "c_bunc_lust",
        "c_bunc_universe",
        "c_lovers",
        "c_empress",
    },

    boosters = {
        "p_bunc_virtual_1",
        "p_bunc_virtual_jumbo",
        "p_bunc_virtual_2",
        "p_bunc_virtual_mega",
    
    },

    vouchers = {
        "v_bunc_disguise",
        "v_bunc_masquerade",
        "v_bunc_shell_game",
        "v_bunc_polybius",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})