ShopsAndContracts.register_shop({
    key = "negative_space",

    appearance = {
        name = "THE NEGATIVE SPACE",
        title_colours = {G.C.PURPLE, G.C.BLACK, G.C.WHITE},
        background_colour = {0.02, 0.01, 0.04, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.cards.negative_created >= 8 or false
    end,

    jokers = {
        "j_invisible",
        "j_abstract",
        "j_stencil",
        "j_egg",
        "j_paperback_shadowmantle",
        "j_paperback_boundary_of_death",
        "j_paperback_penumbra_phantasm",
        "j_paperback_deadringer",
        "j_paperback_ghost_cola",
    },

    consumables = {
        "c_bunc_abyss",
        "c_hex",
        "c_wraith",
    },

    boosters = {
        "p_buffoon_normal_1",
        "p_buffoon_jumbo_1",
        "p_buffoon_mega_1",
    },

    vouchers = {
        "v_antimatter",
        "v_betm_vouchers_eternity",
        "v_betm_vouchers_half_life",
        "v_betm_vouchers_debt_burden",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})