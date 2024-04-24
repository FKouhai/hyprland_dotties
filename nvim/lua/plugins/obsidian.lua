return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    require("obsidian").setup({
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
    ui = {enable = false},
    completion = {
    nvim_cmp = true,
    min_chars = 2,
  },
    attachments = {
      img_folder = "assets/imgs",
      ---@param client obsidian.Client
      ---@param path obsidian.Path the absolute path to the image file
      ---@return string
      img_text_func = function(client, path)
        path = client:vault_relative_path(path) or path
        return string.format("![%s](%s)", path.name, path)
    end,
    },
    mappings = {
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
    ["<cr>"] = {
      action = function()
        return require("obsidian").util.smart_action()
      end,
      opts = { buffer = true, expr = true },
    }
  },
 })
  end,
  vim.keymap.set("n", "<leader>nn", vim.cmd.ObsidianNew, {}),
  vim.keymap.set("n", "<leader>ot", vim.cmd.ObsidianTags, {}),
  vim.keymap.set("n", "<leader>qs", vim.cmd.ObsidianQuickSwitch, {}),
  vim.keymap.set("n", "<leader>pi", vim.cmd.ObsidianPasteImg, {})
}
