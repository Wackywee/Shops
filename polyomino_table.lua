ShopsAndContracts.register_shop({
    key = "polyomino_table",

    appearance = {
        name = "THE POLYOMINO TABLE",
        title_colours = {G.C.ORANGE, G.C.BLUE, G.C.GREEN},
        background_colour = {0.11, 0.06, 0.02, 1}
    },

    can_appear = function()
        local stats = ShopsAndContracts.get_requirement_stats()
        return stats and stats.special.polymino_used >= 4 or false
    end,

    jokers = {
        "j_bunc_tangram",
        "j_bunc_mosaic",
        "j_bunc_puzzle_board",
        "j_bunc_doodle",
        "j_bunc_domino",
        "j_bunc_linocut",
        "j_bunc_pica",
        "j_bunc_voxel",
        "j_bunc_rubber_band_ball",
    },

    consumables = {
        "c_bunc_art",
        "c_fool",
    },

    boosters = {
        "p_bunc_virtual_1",
        "p_bunc_virtual_jumbo",
        "p_bunc_virtual_2",
        "p_bunc_virtual_mega",
    },

    vouchers = {
        "v_bunc_arcade_machine",
        "v_bunc_polybius",
    },

    slots = {top = 3, boosters = 2, vouchers = 1},

    pool_weights = {jokers = 3, consumables = 2}
})