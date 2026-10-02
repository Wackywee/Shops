ShopsAndContracts.register_shop({
    key = "full_house",

    appearance = {
        name = "THE FULL HOUSE",
        title_colours = {G.C.RED, G.C.GREEN, G.C.GOLD},
        background_colour = {0.16, 0.06, 0.03, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and ShopsAndContracts.get_hand_count(stats, "Full House") >= 12 or false
    end,

    jokers = {
        "j_smeared",
        "j_family",
        "j_duo",
        "j_trio",
        "j_paperback_pocket_pair",
        "j_square",
        "j_jolly",
        "j_sly",
        "j_wily",
        "j_fibonacci",
        "j_juggler",
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