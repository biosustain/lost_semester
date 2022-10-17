-- LSP configs
require("lspconfig").pylsp.setup({
  cmd = {"pylsp"},
  filetypes = { "python" },
})
