ShopsAndContracts.register_shop({
    key = "metalworks",

    appearance = {
        name = "THE METALWORKS",
        title_colours = {G.C.GREY, G.C.BLUE, G.C.GOLD},
        background_colour = {0.06, 0.08, 0.1, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.steel_held >= 15 or false
    end,

    jokers = {
        "j_steel_joker",
        "j_bunc_metallurgist",
        "j_bunc_sledgehammer",
        "j_bunc_hardtack",
        "j_paperback_cast_iron",
        "j_paperback_bismuth",
        "j_bunc_dwarven",
        "j_paperback_pyrite",
        "j_paperback_quartz",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_chariot",
        "c_tower",
    },

    boosters = {
        "p_bunc_virtual_1",
        "p_standard_normal_1",
        "p_standard_jumbo_1",
        "p_standard_mega_1",
    },

    vouchers = {
        "v_bunc_chainsaw",
        "v_bunc_supercoating",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})