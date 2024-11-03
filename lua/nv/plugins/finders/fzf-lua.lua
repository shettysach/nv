return {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },

    config = function()
        require("fzf-lua").setup({
            winopts = {
                height = 0.75, -- window height
                width = 0.70,  -- window width
                row = 0.35,    -- window row position (0=top, 1=bottom)
                col = 0.50,    -- window col position (0=left, 1=right)

                border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },

            },

            fzf_colors = {
                ["fg+"] = { "fg", { "LspInlayHint" }, "bold" },
            },

            files = {
                cwd_prompt = false,
                git_icons = false
            }

        })

        local keymap = vim.keymap
        keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fw", "<cmd>FzfLua grep_visual<cr>", { desc = "Fuzzy find word" })
        keymap.set("n", "<leader>fc", "<cmd>FzfLua grep_cWORD <cr>", { desc = "Fuzzy find word under cursor" })
        keymap.set("n", "<leader>fz", "<cmd>FzfLua grep_project<cr>", { desc = "Fuzzy find in current buffer" })
        keymap.set("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "Fuzzy find LSP symbols" })
        keymap.set("n", "<leader>fd", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Fzf Diagnostics" })
        keymap.set("n", "<leader>cc", "<cmd>FzfLua colorschemes<cr>", { desc = "Colorschemes" })
    end,
}
