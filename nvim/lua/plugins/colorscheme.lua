return {
  "tiagovla/tokyodark.nvim",
   config = function()
    local tokyonight = require("tokyodark")
    tokyonight.setup({
      transparent_background = false,
      gamma = 1.00,
      comments = { italic = true }, -- style for comments
      keywords = { italic = true }, -- style for keywords
      identifiers = { italic = true }, -- style for identifiers
   })
    vim.cmd[[colorscheme tokyodark]]
  end,
}
