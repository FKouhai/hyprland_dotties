return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup({
      git = {
        add = function(path)
          return false
          end,
        mv = function(src_path, dest_path)
          return false
          end,
        rm = function(path)
          return false
          end,
          },
    })
    vim.keymap.set("n", "-", oil.toggle_float, {})
  end,
}
