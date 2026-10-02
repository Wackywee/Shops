ShopsAndContracts.register_shop({
    key = "straight_house",

    appearance = {
        name = "THE STRAIGHT HOUSE",
        title_colours = {G.C.BLUE, G.C.PURPLE, G.C.GOLD},
        background_colour = {0.04, 0.05, 0.16, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and ShopsAndContracts.get_hand_count(stats, "Straight") >= 20 or false
    end,

    jokers = {
        "j_shortcut",
        "j_runner",
        "j_four_fingers",
        "j_ancient",
        "j_order",
        "j_devious",
        "j_card_sharp",
        "j_paperback_high_speed_rail",
        "j_paperback_yacht_dice",
        "j_bunc_on_broadway",
    },

    consumables = {
        "c_strength",
        "c_hf_struggle",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {},

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})