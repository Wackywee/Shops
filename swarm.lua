ShopsAndContracts.register_shop({
    key = "swarm",

    appearance = {
        name = "THE SWARM",
        title_colours = {G.C.YELLOW, G.C.ORANGE, G.C.RED},
        background_colour = {0.14, 0.09, 0.02, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.rounds.largest_deck >= 75 or false
    end,

    jokers = {
        "j_hologram",
        "j_marble",
        "j_erosion",
        "j_wee",
        "j_dna",
        "j_paperback_giga_size",
        "j_paperback_shopping_center",
        "j_riff_raff",
        "j_paperback_deck_of_cards",
        "j_paperback_collector",
    },

    consumables = {
        "c_paperback_ace_of_pentacles",
        "c_fool",
        "c_cryptid",
    },

    boosters = {
        "p_standard_jumbo_1",
        "p_standard_mega_1",
        "p_standard_normal_1",
        "p_standard_normal_2",
        "p_standard_jumbo_2",
    },

    vouchers = {
        "v_overstock_plus",
        "v_betm_vouchers_oversupply",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})