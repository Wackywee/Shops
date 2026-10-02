ShopsAndContracts.register_shop({
    key = "cardsmith",

    appearance = {
        name = "THE CARDSMITH",
        title_colours = {G.C.BLUE, G.C.GREY, G.C.GOLD},
        background_colour = {0.7, 0.3, 0.12, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.cards.added >= 16 or false
    end,
jokers = {
    "j_marble",
    "j_dna",
    "j_hologram",
    "j_certificate",
    "j_blue_joker",
    "j_paperback_deck_of_cards",
    "j_paperback_card_sleeve",
    "j_paperback_forgery",
    "j_bunc_bierdeckel",
    "j_trading",
    "j_hiker",
    "j_erosion",
},

consumables = {
    "c_bunc_adjustment",
    "c_fool",
    "c_cryptid",
},

boosters = {
    "p_standard_normal_1",
    "p_standard_jumbo_1",
    "p_standard_normal_2",
    "p_standard_jumbo_2",
    "p_standard_mega_2",
},

vouchers = {
    "v_grabber",
    "v_magic_trick",
    "v_betm_vouchers_oversupply",
},

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})