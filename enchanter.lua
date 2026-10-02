ShopsAndContracts.register_shop({
    key = "enchanter",

    appearance = {
        name = "THE ENCHANTER",
        title_colours = {G.C.PURPLE, G.C.GOLD, G.C.BLUE},
        background_colour = {0.1, 0.05, 0.12, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.cards.enhancements_applied >= 15 or false
    end,

    jokers = {
        "j_vampire",
        "j_hiker",
        "j_glass",
        "j_steel_joker",
        "j_stone",
        "j_paperback_watercolor_joker",
        "j_bunc_puzzle_board",
        "j_paperback_mandela_effect",
        "j_paperback_joker_crossing",
        "j_bloodstone",
        "j_rough_gem",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_chariot",
        "c_justice",
    },

    boosters = {
        "p_standard_normal_1",
        "p_bunc_virtual_1",
        "p_standard_normal_2",
        "p_standard_jumbo_2",
        "p_standard_mega_2",
    
    },

    vouchers = {
        "v_hone",
        "v_glow_up",
        "v_bunc_supercoating",
        "v_betm_vouchers_slate",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})