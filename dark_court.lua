ShopsAndContracts.register_shop({
    key = "dark_court",

    appearance = {
        name = "THE DARK COURT",
        title_colours = {G.C.PURPLE, G.C.BLACK, G.C.BLUE},
        background_colour = {0.04, 0.02, 0.1, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.dark_suit_hands >= 20 or false
    end,

    jokers = {
        "j_paperback_prince_of_darkness",
        "j_paperback_shadowmantle",
        "j_paperback_penumbra_phantasm",
        "j_paperback_black_forest_cake",
        "j_paperback_jester_of_nihil",
        "j_paperback_moribund",
        "j_paperback_the_quiet",
        "j_paperback_ampersand",
        "j_paperback_black_rainbows",
    },

    consumables = {
        "c_paperback_ace_of_swords",
        "c_paperback_ace_of_wands",
        "c_paperback_apostle_of_swords",
        "c_paperback_apostle_of_wands",
        "c_hf_hubris",
        "c_hf_struggle",
    },

    boosters = {
        "p_spectral_normal_1",
        "p_spectral_jumbo_1",
        "p_paperback_ego_gift_normal_1",
    },

    vouchers = {
        "v_betm_vouchers_reserve_area_plus",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})