ShopsAndContracts.register_shop({
    key = "joker_graveyard",

    appearance = {
        name = "THE JOKER GRAVEYARD",
        title_colours = {G.C.RED, G.C.PURPLE, G.C.BLACK},
        background_colour = {0.11, 0.03, 0.08, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.jokers.sold >= 10 or false
    end,

    jokers = {
        "j_ceremonial",
        "j_riff_raff",
        "j_vagabond",
        "j_mr_bones",
        "j_yorick",
        "j_paperback_everything_must_go",
        "j_paperback_sacrificial_lamb",
        "j_madness",
        "j_campfire",
        "j_bunc_vandalism",
        "j_trading",
        "j_burnt",
    },

    consumables = {
        "c_hf_forgiveness",
        "c_hanged_man",
        "c_immolate",
    },

    boosters = {
        "p_spectral_normal_1",
        "p_buffoon_normal_1",
    },

    vouchers = {
        "v_clearance_sale",
        "v_liquidation",
        "v_betm_vouchers_recycle_area",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})