ShopsAndContracts.register_shop({
    key = "seal_archive",

    appearance = {
        name = "THE SEAL ARCHIVE",
        title_colours = {G.C.BLUE, G.C.GOLD, G.C.PURPLE},
        background_colour = {0.04, 0.07, 0.15, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.rounds.highest_sealed_cards >= 7 or false
    end,

    jokers = {
        "j_certificate",
        "j_mail",
        "j_bunc_fingerprints",
        "j_paperback_reference_card",
        "j_paperback_stamp",
        "j_paperback_double_dutchman",
        "j_bunc_registration_plate",
        "j_paperback_punch_card",
    },

    consumables = {
        "c_bunc_cleanse",
        "c_fool",
    },

    boosters = {
        "p_standard_normal_1",
        "p_bunc_virtual_1",
        "p_standard_normal_2",
        "p_standard_jumbo_1",
        "p_standard_mega_1",
    },

    vouchers = {
        "v_recyclomancy",
        "v_bunc_lamination",
        "v_betm_vouchers_recycle_area",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})