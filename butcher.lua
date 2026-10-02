ShopsAndContracts.register_shop({
    key = "butcher",

    appearance = {
        name = "THE BUTCHER",
        title_colours = {G.C.RED, G.C.PURPLE, G.C.GOLD},
        background_colour = {0.18, 0.04, 0.04, 1}
    },

    can_appear = function()
        return (G.GAME.shopsncontracts.destroyed_cards or 0) >= 16
    end,

    jokers = {
        "j_burnt",
        "j_campfire",
        "j_luchador",
        "j_mr_bones",
        "j_bunc_sledgehammer",
        "j_paperback_sacrificial_lamb",
        "j_madness",
        "j_vampire",
        "j_bunc_vandalism",
        "j_paperback_fodder",
        "j_erosion",
        "j_trading",
    },

    consumables = {
        "c_bunc_abyss",
        "c_hanged_man",
        "c_immolate",
    },

    boosters = {
        "p_bunc_blind_1",
        "p_standard_normal_1",
        "p_standard_jumbo_1",
        "p_spectral_normal_1",
    },

    vouchers = {
        "v_bunc_chainsaw",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})