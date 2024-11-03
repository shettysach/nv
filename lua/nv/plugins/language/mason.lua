return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        },
        cmd = "Mason",
        ft = { "lua", "html", "css" },
        lazy = true,
        config = function()
            local mason = require("mason")
            local mason_lspconfig = require("mason-lspconfig")
            local mason_tool_installer = require("mason-tool-installer")
            mason.setup({
                ui = {
                    icons = {
                        package_installed = "i",
                        package_pending = "p",
                        package_uninstalled = "u",
                    },
                },
            })

            mason_lspconfig.setup({
                lazy = true,
                ensure_installed = {
                    "html",
                    "cssls",
                    "lua_ls",
                },
            })

            mason_tool_installer.setup({
                lazy = true,
                ensure_installed = {
                    "prettier",
                    "stylua",
                },
            })
        end,
    },
}
