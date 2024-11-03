return {
    "danilamihailov/beacon.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("beacon").setup({
            enabled = true,
            speed = 2,
            width = 30,
            winblend = 50,
            fps = 60,
            min_jump = 5,
            cursor_events = { "CursorMoved" },
            window_events = { "WinEnter", "FocusGained" },
            highlight = { bg = "white" },
        })

        vim.cmd([[highlight! link Beacon TodoBgTODO]])
    end,
}
