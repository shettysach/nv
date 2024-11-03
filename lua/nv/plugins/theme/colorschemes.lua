return {
    { "raddari/last-color.nvim" },

    {
        "folke/tokyonight.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            style = "night",
        },
    },

    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     lazy = false,
    -- },

    {
        "RedsXDD/neopywal.nvim",
        name = "neopywal",
        lazy = false,
        priority = 1000,
    },

    {
        "zenbones-theme/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
    },

    {
        "hachy/eva01.vim",
        -- "presindent/ethereal.nvim",
        -- "olivercederborg/poimandres.nvim",
        -- "rebelot/kanagawa.nvim",
        -- "cocopon/iceberg.vim",
        -- "Shadorain/shadotheme",
        -- "shaunsingh/moonlight.nvim",
        priority = 1000,
        lazy = false,
    },
}
