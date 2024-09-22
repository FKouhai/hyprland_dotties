return {
  "folke/tokyonight.nvim",
  config = function()
    local tokyonight = require("tokyonight")
    tokyonight.setup({
      style = "storm",
    })
    vim.cmd[[colorscheme tokyonight-night]]
  end,
}
