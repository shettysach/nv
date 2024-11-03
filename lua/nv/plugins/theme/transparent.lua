return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({})
    require("transparent").clear_prefix("NvimTree")
    require("transparent").clear_prefix("Telescope")
    require("transparent").clear_prefix("BufferLine")
  end,
}
