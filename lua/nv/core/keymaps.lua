vim.g.mapleader = " "

local lsp = vim.lsp
local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- WINDOW
keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>")
keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>")
keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>")
keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>")

keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>", { desc = "Vertical split" })
keymap.set("n", "<leader>wh", "<cmd>split<CR>", { desc = "Horizontal split" })
keymap.set("n", "<leader>wq", "<cmd>close<CR>", { desc = "Close split" })

-- TABS
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<Tab>", "<cmd>tabnext<CR>", { desc = "Next tab" })
keymap.set("n", "<S-Tab>", "<cmd>tabprevious<CR>", { desc = "Next tab" })

-- INLAY HINTS
keymap.set("n", "<leader>i", function()
    lsp.inlay_hint.enable(not lsp.inlay_hint.is_enabled({}))
end, { desc = "Toggle inlay hints" })

-- NEOTREE
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle tree" })

-- TRANSPARENCY
keymap.set("n", "<leader>ct", "<cmd>TransparentToggle<CR>", { desc = "Transparency" })

-- TERMINAL
keymap.set("n", "<leader>v", "<cmd>vsplit<cr><cmd>terminal<cr>", { desc = "Vsplit terminal" })
keymap.set("n", "<leader>h", "<cmd>split<cr><cmd>terminal<cr>", { desc = "Hsplit terminal" })
keymap.set("t", "<C-x>", [[<C-\><C-n>]])
