ShopsAndContracts.register_shop({
    key = "triple_house",

    appearance = {
        name = "THE TRIPLE HOUSE",
        title_colours = {G.C.GREEN, G.C.BLUE, G.C.GOLD},
        background_colour = {0.03, 0.12, 0.08, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and ShopsAndContracts.get_hand_count(stats, "Three of a Kind") >= 20 or false
    end,

    jokers = {
        "j_zany",
        "j_trio",
        "j_family",
        "j_juggler",
        "j_wily",
        "j_wee",
        "j_paperback_pocket_pair",
        "j_fibonacci",
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