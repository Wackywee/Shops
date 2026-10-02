ShopsAndContracts.register_shop({
    key = "deck_architect",

    appearance = {
        name = "THE DECK ARCHITECT",
        title_colours = {G.C.BLUE, G.C.ORANGE, G.C.GREY},
        background_colour = {0.05, 0.08, 0.1, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.cards.destroyed >= 8 and stats.cards.added >= 8 or false
    end,

    jokers = {
        "j_burnt",
        "j_erosion",
        "j_dna",
        "j_marble",
        "j_paperback_deck_of_cards",
        "j_paperback_forgery",
        "j_bunc_sledgehammer",
        "j_bunc_vandalism",
        "j_paperback_fodder",
        "j_trading",
        "j_hanging_chad",
    },

    consumables = {
        "c_bunc_abyss",
        "c_bunc_adjustment",
        "c_hanged_man",
        "c_death",
    },

    boosters = {
        "p_standard_normal_1",
        "p_bunc_virtual_1",
        "p_standard_normal_2",
        "p_standard_jumbo_2",
    
    },

    vouchers = {
        "v_recyclomancy",
        "v_grabber",
        "v_betm_vouchers_reserve_area",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})