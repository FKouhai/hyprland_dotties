return {
  'FKouhai/nvim-llama',
  config = function()
    local nvim_llama = require("nvim-llama")
    nvim_llama.setup({
        model = "llama3.1",
        docker = true,
        ollama_port = "11434",
        ollama_host = "localhost",
    })
    vim.keymap.set("n", "<leader>co","<cmd>Llama<CR>")
  end,
}
