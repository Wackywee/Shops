ShopsAndContracts.register_shop({
    key = "stonemason",

    appearance = {
        name = "THE STONEMASON",
        title_colours = {G.C.GREY, G.C.BLUE, G.C.WHITE},
        background_colour = {0.08, 0.08, 0.09, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.special.stone_scored >= 15 or false
    end,

    jokers = {
        "j_stone",
        "j_marble",
        "j_onyx_agate",
        "j_arrowhead",
        "j_paperback_rock_candy",
        "j_paperback_pyrite",
        "j_bunc_mosaic",
        "j_bunc_voxel",
        "j_paperback_quartz",
    },

    consumables = {
        "c_bunc_art",
        "c_tower",
        "c_justice",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_bunc_supercoating",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})