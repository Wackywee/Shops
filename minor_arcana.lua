ShopsAndContracts.register_shop({
    key = "minor_arcana",

    appearance = {
        name = "THE MINOR ARCANA",
        title_colours = {G.C.RED, G.C.BLUE, G.C.GOLD},
        background_colour = {0.12, 0.04, 0.07, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.minor_arcana_used >= 20 or false
    end,

    jokers = {
        "j_paperback_oracle",
        "j_paperback_tome",
        "j_paperback_book_of_life",
        "j_paperback_book_of_vengeance",
        "j_paperback_prince_of_darkness",
        "j_paperback_summoning_circle",
        "j_paperback_jacks",
        "j_paperback_the_dynasty",
    },

    consumables = {
        "c_paperback_ace_of_cups",
        "c_paperback_ace_of_pentacles",
        "c_paperback_ace_of_swords",
        "c_paperback_ace_of_wands",
        "c_paperback_king_of_cups",
        "c_paperback_apostle_of_cups",
        "c_paperback_apostle_of_pentacles",
        "c_paperback_apostle_of_swords",
        "c_paperback_apostle_of_wands",
        "c_strength",
        "c_death",
    },

    boosters = {
        "p_paperback_minor_arcana_normal_1",
        "p_paperback_minor_arcana_jumbo_1",
        "p_paperback_minor_arcana_mega",
        "p_paperback_minor_arcana_normal_2",
        "p_paperback_minor_arcana_normal_3",
        "p_paperback_minor_arcana_normal_4",
        "p_paperback_minor_arcana_jumbo_2",
        "p_paperback_minor_arcana_mega_2",
    },

    vouchers = {
        "paperback_celtic_cross",
        "paperback_soothsay",
        "paperback_rabbit_protocol",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})