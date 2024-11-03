return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    cmd = "NvimTreeToggle",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle tree" }),

            view = {

                number = true,
                relativenumber = true,
                width = 35,
            },

            renderer = {
                special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },

                indent_markers = {
                    enable = true,
                },
                icons = {
                    git_placement = "after",
                    glyphs = {
                        git = {
                            unstaged = "✗",
                            staged = "+",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "u",
                            deleted = "-",
                            ignored = "/",
                        },
                    },
                },
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
                show_on_open_dirs = true,
                debounce_delay = 50,
                icons = {
                    hint = "󰌶",
                    info = "",
                    warning = "",
                    error = "",
                },
            },
            modified = {
                enable = true,
                show_on_dirs = true,
                show_on_open_dirs = true,
            },
            actions = {
                use_system_clipboard = true,
                change_dir = {
                    enable = false,
                },
            },
            tab = {
                sync = {
                    open = true,
                    close = true,
                },
            },

        })
    end,
}
