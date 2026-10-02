ShopsAndContracts.register_shop({
    key = "finishers_market",

    appearance = {
        name = "THE FINISHER'S MARKET",
        title_colours = {G.C.ORANGE, G.C.BLUE, G.C.PURPLE},
        background_colour = {0.12, 0.06, 0.12, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
                return stats and stats.special.foil_or_holo_scored >= 12 or false
    end,

    jokers = {
        "j_hologram",
        "j_glass",
        "j_bunc_puzzle_board",
        "j_paperback_watercolor_joker",
        "j_paperback_prism",
        "j_paperback_bismuth",
        "j_paperback_stereoscopic_specs",
        "j_lucky_cat",
        "j_oops",
    },

    consumables = {
        "c_bunc_art",
        "c_wheel_of_fortune",
        "c_aura",
    },

    boosters = {
        "p_standard_normal_1",
        "p_standard_jumbo_1",
        "p_buffoon_normal_1",
        "p_buffoon_jumbo_1",
    },

    vouchers = {
        "v_glow_up",
        "v_bunc_supercoating",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})