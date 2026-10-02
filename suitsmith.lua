ShopsAndContracts.register_shop({
    key = "suitsmith",

    appearance = {
        name = "THE SUITSMITH",
        title_colours = {G.C.RED, G.C.BLUE, G.C.GOLD},
        background_colour = {0.08, 0.07, 0.1, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.cards.suit_changes >= 15 or false
    end,

    jokers = {
        "j_smeared",
        "j_flower_pot",
        "j_seeing_double",
        "j_paperback_prism",
        "j_paperback_da_capo",
        "j_bunc_linocut",
        "j_paperback_gambit",
        "j_paperback_ampersand",
        "j_bunc_crop_circles",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_bunc_cleanse",
        "c_paperback_ace_of_cups",
        "c_paperback_ace_of_pentacles",
        "c_lovers",
        "c_death",
    },

    boosters = {
        "p_bunc_virtual_1",
        "p_arcana_normal_1",
        "p_arcana_jumbo_1",
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_palette",
        "v_bunc_disguise",
        "v_betm_vouchers_recycle_area",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})