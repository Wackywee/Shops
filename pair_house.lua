ShopsAndContracts.register_shop({
    key = "pair_house",

    appearance = {
        name = "THE PAIR HOUSE",
        title_colours = {G.C.BLUE, G.C.PURPLE, G.C.GOLD},
        background_colour = {0.04, 0.08, 0.18, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and ShopsAndContracts.get_hand_count(stats, "Pair") >= 30 or false
    end,

    jokers = {
        "j_jolly",
        "j_duo",
        "j_half",
        "j_wee",
        "j_sly",
        "j_paperback_pocket_pair",
        "j_fibonacci",
        "j_hanging_chad",
    },

    consumables = {
        "c_strength",
        "c_death",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_normal_2",
    },

    vouchers = {},

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})