ShopsAndContracts.register_shop({
    key = "paperclip_exchange",

    appearance = {
        name = "THE PAPERCLIP EXCHANGE",
        title_colours = {G.C.GREY, G.C.BLUE, G.C.GOLD},
        background_colour = {0.07, 0.08, 0.1, 1}
    },

    can_appear = function()
        return ShopsAndContracts.count_paperclip_cards() >= 10
    end,

    jokers = {
        "j_paperback_clippy",
        "j_paperback_clothespin",
        "j_paperback_chip_clip",
        "j_paperback_card_sleeve",
        "j_paperback_manilla_folder",
        "j_paperback_keycard",
        "j_paperback_stamp",
        "j_paperback_photocopy",
        "j_paperback_reference_card",
        "j_paperback_punch_card",
        "j_paperback_union_card",
    },

    consumables = {
        "c_paperback_ace_of_pentacles",
        "c_fool",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_normal_2",
        "p_standard_jumbo_1",
        "p_standard_jumbo_2",
        "p_standard_mega_1",
        "p_standard_mega_2",
    },

    vouchers = {
        "paperback_celtic_cross",
        "paperback_rabbit_protocol",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})