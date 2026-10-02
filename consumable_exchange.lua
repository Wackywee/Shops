ShopsAndContracts.register_shop({
    key = "consumable_exchange",

    appearance = {
        name = "THE CONSUMABLE EXCHANGE",
        title_colours = {G.C.PURPLE, G.C.BLUE, G.C.GREEN},
        background_colour = {0.65, 0.5, 0.08, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.consumables.used >= 1 or false
    end,

    jokers = {
        "j_vagabond",
        "j_hallucination",
        "j_sixth_sense",
        "j_perkeo",
        "j_paperback_tome",
        "j_paperback_oracle",
        "j_superposition",
        "j_seance",
        "j_todo_list",
    },

    consumables = {
        "c_paperback_ace_of_cups",
        "c_bunc_art",
        "c_hf_forgiveness",
        "c_bunc_universe",
        "c_hf_great_comet",
        "c_hf_hubris",
        "c_fool",
        "c_hermit",
        "c_wheel_of_fortune",
    },

    boosters = {
        "p_arcana_normal_1",
        "p_celestial_normal_1",
        "p_spectral_normal_1",
        "p_paperback_minor_arcana_normal_1",
        "p_arcana_normal_2",
        "p_celestial_normal_2",
        "p_spectral_normal_2",
        "p_standard_normal_1",
        "p_paperback_minor_arcana_normal_2",
        "p_bunc_virtual_2",
    
    },

    vouchers = {
        "v_crystal_ball",
        "v_illusion",
        "v_betm_vouchers_reserve_area_plus",
    
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})