ShopsAndContracts.register_shop({
    key = "glassworks",

    appearance = {
        name = "THE GLASSWORKS",
        title_colours = {G.C.L_BLACK, G.C.BLUE, G.C.WHITE},
        background_colour = {0.04, 0.1, 0.15, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.glass_scored >= 10 or false
    end,

    jokers = {
        "j_glass",
        "j_bunc_puzzle_board",
        "j_hologram",
        "j_paperback_blue_marble",
        "j_paperback_great_wave",
        "j_bloodstone",
        "j_paperback_watercolor_joker",
        "j_paperback_marble_soda",
        "j_hf_myshkin",
    },

    consumables = {
        "c_bunc_art",
        "c_justice",
        "c_hf_forgiveness",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_bunc_supercoating",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})