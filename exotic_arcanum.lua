ShopsAndContracts.register_shop({
    key = "exotic_arcanum",

    appearance = {
        name = "THE EXOTIC ARCANUM",
        title_colours = {G.C.ORANGE, G.C.PURPLE, G.C.BLUE},
        background_colour = {0.13, 0.04, 0.09, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.suit_tarot_used >= 8 or false
    end,

    jokers = {
        "j_bunc_crop_circles",
        "j_bunc_aristocrat",
        "j_bunc_mosaic",
        "j_bunc_voxel",
        "j_paperback_prism",
        "j_paperback_gambit",
        "j_bunc_rasta",
        "j_bunc_linocut",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_bunc_art",
        "c_bunc_lust",
        "c_bunc_universe",
        "c_lovers",
        "c_hierophant",
    },

    boosters = {
        "p_bunc_virtual_1",
        "p_bunc_virtual_jumbo",
        "p_arcana_normal_1",
        "p_arcana_jumbo_1",
        "p_arcana_mega_1",
        "p_bunc_virtual_2",
    
    },

    vouchers = {
        "v_bunc_disguise",
        "v_palette",
        "v_bunc_masquerade",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})