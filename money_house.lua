ShopsAndContracts.register_shop({
    key = "money_house",

    appearance = {
        name = "THE MONEY HOUSE",
        title_colours = {G.C.GREEN, G.C.GOLD, G.C.YELLOW},
        background_colour = {0.05, 0.14, 0.04, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.money.effect_earned >= 100 or false
    end,

    jokers = {
        "j_bull",
        "j_to_the_moon",
        "j_rocket",
        "j_cloud_9",
        "j_reserved_parking",
        "j_paperback_angel_investor",
        "j_paperback_coin_collection",
        "j_bunc_loan_shark",
        "j_business",
        "j_bootstraps",
        "j_golden",
        "j_paperback_insurance_policy",
        "j_paperback_chocolate_coins",
        "j_paperback_loaded_dice",
    },

    consumables = {
        "c_paperback_king_of_pentacles",
        "c_paperback_queen_of_pentacles",
        "c_paperback_knight_of_pentacles",
        "c_hermit",
        "c_temperance",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
    },

    vouchers = {
        "v_seed_money",
        "v_money_tree",
        "v_betm_vouchers_money_target",
        "v_betm_vouchers_round_up",
        "v_betm_vouchers_gold_coin",
        "v_betm_vouchers_gold_bar",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})