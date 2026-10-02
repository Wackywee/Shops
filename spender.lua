ShopsAndContracts.register_shop({
    key = "spender",

    appearance = {
        name = "THE SPENDER",
        title_colours = {G.C.RED, G.C.GOLD, G.C.GREEN},
        background_colour = {0.14, 0.05, 0.03, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.shops.money_spent >= 200 or false
    end,

    jokers = {
        "j_credit_card",
        "j_diet_cola",
        "j_paperback_shopkeep",
        "j_paperback_shopping_center",
        "j_paperback_everything_must_go",
        "j_vagabond",
        "j_flash",
        "j_bunc_loan_shark",
        "j_paperback_loaded_dice",
        "j_paperback_insurance_policy",
        "j_paperback_chocolate_coins",
    },

    consumables = {
        "c_paperback_ace_of_pentacles",
        "c_hermit",
        "c_temperance",
    },

    boosters = {
        "p_standard_normal_1",
        "p_buffoon_normal_1",
        "p_buffoon_jumbo_1",
    },

    vouchers = {
        "v_clearance_sale",
        "v_liquidation",
        "v_betm_vouchers_bargain_aisle",
        "v_betm_vouchers_clearance_aisle",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})