ShopsAndContracts.register_shop({
    key = "edition_house",

    appearance = {
        name = "THE EDITION HOUSE",
        title_colours = {G.C.PURPLE, G.C.FILTER, G.C.GOLD},
        background_colour = {0.28, 0.08, 0.32, 1}
    },

    can_appear = function()
    local stats = ShopsAndContracts.get_requirement_stats()
    return stats and stats.rounds.highest_edition_cards >= 8 or false
end,

    jokers = {
        "j_hologram",
        "j_midas_mask",
        "j_paperback_prism",
        "j_paperback_kintsugi_joker",
        "j_paperback_foil",
        "j_paperback_holographic",
        "j_paperback_polychrome",
        "j_bunc_mosaic",
        "j_bunc_neon",
    },

    consumables = {
        "c_bunc_adjustment",
        "c_bunc_art",
        "c_paperback_illusion",
        "c_wheel_of_fortune",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
        "p_buffoon_normal_1",
        "p_buffoon_jumbo_1",
    },

    vouchers = {
        "v_hone",
        "v_glow_up",
        "v_betm_vouchers_abstract_art",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})