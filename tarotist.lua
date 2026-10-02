ShopsAndContracts.register_shop({
    key = "tarotist",

    appearance = {
        name = "THE TAROTIST",
        title_colours = {G.C.PURPLE, G.C.RED, G.C.GOLD},
        background_colour = {0.13, 0.03, 0.1, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.boosters.arcana_opened >= 10 or false
    end,

    jokers = {
        "j_fortune_teller",
        "j_cartomancer",
        "j_hallucination",
        "j_8_ball",
        "j_paperback_oracle",
        "j_paperback_tome",
        "j_vagabond",
        "j_sixth_sense",
        "j_paperback_summoning_circle",
        "j_superposition",
        "j_seance",
    },

    consumables = {
        "c_paperback_ace_of_cups",
        "c_paperback_ace_of_wands",
        "c_paperback_ace_of_swords",
        "c_paperback_ace_of_pentacles",
        "c_fool",
        "c_death",
        "c_hermit",
    },

    boosters = {
        "p_arcana_normal_1",
        "p_arcana_jumbo_1",
        "p_arcana_normal_2",
        "p_arcana_normal_3",
        "p_arcana_normal_4",
        "p_arcana_jumbo_2",
        "p_arcana_mega_1",
        "p_arcana_mega_2",
    },

    vouchers = {
        "v_tarot_merchant",
        "v_tarot_tycoon",
        "v_crystal_ball",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})