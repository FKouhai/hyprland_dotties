return {
  "CRAG666/betterTerm.nvim",
  config = function()
    local betterTerm = require("betterTerm")
    betterTerm.setup({
        position = "bot",
        size = "8",
    })
  end,
}
