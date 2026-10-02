ShopsAndContracts.register_shop({
    key = "flush_house",

    appearance = {
        name = "THE FLUSH HOUSE",
        title_colours = {G.C.GREEN, G.C.BLUE, G.C.PURPLE},
        background_colour = {0.02, 0.12, 0.13, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and ShopsAndContracts.get_hand_count(stats, "Flush") >= 20 or false
    end,

    jokers = {
        "j_four_fingers",
        "j_smeared",
        "j_flower_pot",
        "j_seeing_double",
        "j_tribe",
        "j_crafty",
        "j_paperback_prism",
        "j_bunc_mosaic",
        "j_bunc_rasta",
        "j_paperback_da_capo",
    },

    consumables = {
        "c_lovers",
        "c_death",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {},

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})