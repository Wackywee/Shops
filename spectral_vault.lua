ShopsAndContracts.register_shop({
    key = "spectral_vault",

    appearance = {
        name = "THE SPECTRAL VAULT",
        title_colours = {G.C.PURPLE, G.C.RED, G.C.BLUE},
        background_colour = {0.09, 0.02, 0.13, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.special.spectral_purchased >= 5 or false
    end,

    jokers = {
        "j_seance",
        "j_sixth_sense",
        "j_bunc_ghost_print",
        "j_paperback_shadowmantle",
        "j_paperback_deadringer",
        "j_paperback_summoning_circle",
        "j_paperback_penumbra_phantasm",
        "j_hf_faust",
    },

    consumables = {
        "c_hf_envoy",
        "c_hf_great_comet",
        "c_hf_osiris",
        "c_hf_forgiveness",
        "c_bunc_abyss",
        "c_bunc_the_8",
        "c_hf_hubris",
        "c_hf_struggle",
    },

    boosters = {
        "p_spectral_normal_1",
        "p_spectral_jumbo_1",
        "p_spectral_mega_1",
        "p_spectral_normal_2",
    },

    vouchers = {
        "v_illusion",
        "v_omen_globe",
        "v_betm_vouchers_reserve_area_plus",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})