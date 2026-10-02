ShopsAndContracts.register_shop({
    key = "goldsmith",

    appearance = {
        name = "THE GOLDSMITH",
        title_colours = {G.C.GOLD, G.C.YELLOW, G.C.ORANGE},
        background_colour = {0.16, 0.09, 0.02, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.rounds.rounds_with_3_gold_cards >= 1 or false
    end,

    jokers = {
        "j_golden",
        "j_midas_mask",
        "j_bull",
        "j_rough_gem",
        "j_bunc_metallurgist",
        "j_paperback_golden_apple",
        "j_paperback_golden_egg",
        "j_paperback_coin_collection",
        "j_paperback_chocolate_coins",
        "j_paperback_insurance_policy",
    },

    consumables = {
        "c_paperback_king_of_pentacles",
        "c_devil",
        "c_hermit",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_seed_money",
        "v_money_tree",
        "v_betm_vouchers_gold_coin",
        "v_betm_vouchers_gold_bar",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})