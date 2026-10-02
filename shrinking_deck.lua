ShopsAndContracts.register_shop({
    key = "shrinking_deck",

    appearance = {
        name = "THE SHRINKING DECK",
        title_colours = {G.C.PURPLE, G.C.BLUE, G.C.WHITE},
        background_colour = {0.07, 0.03, 0.12, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.rounds.smallest_deck ~= nil and stats.rounds.smallest_deck <= 30 or false
    end,

    jokers = {
        "j_vagabond",
        "j_burnt",
        "j_erosion",
        "j_trading",
        "j_dna",
        "j_paperback_everything_must_go",
        "j_paperback_fodder",
    },

    consumables = {
        "c_bunc_abyss",
        "c_immolate",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_recyclomancy",
        "v_betm_vouchers_reserve_area",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})