local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "nv.plugins" },
    { import = "nv.plugins.theme" },
    { import = "nv.plugins.status" },
    { import = "nv.plugins.misc" },
    { import = "nv.plugins.movement" },
    { import = "nv.plugins.finders" },
    { import = "nv.plugins.file" },
    { import = "nv.plugins.language" },
}, {
    ui = {
        border = "single",
        size = {
            width = 0.8,
            height = 0.8,
        },
    },
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        notify = false,
    },
})

require("nv.theming")
