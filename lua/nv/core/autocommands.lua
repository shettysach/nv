local autocmd = vim.api.nvim_create_autocmd

autocmd({ "ColorScheme" }, {
    callback = function()
        vim.cmd([[highlight! link LspInlayHint DiagnosticHint]])
        vim.cmd([[highlight! link Beacon TodoBgTODO]])
        vim.cmd([[highlight! link LineNr @punctuation]])
    end,
})

autocmd({ "TermOpen" }, {
    callback = function()
        vim.cmd([[startinsert]])
    end,
})
