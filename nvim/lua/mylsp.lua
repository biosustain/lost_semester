-- python
require("lspconfig").pylsp.setup({
  cmd = {"pylsp"},
  filetypes = { "python" },
})

-- latex
require("lspconfig").texlab.setup({
  cmd = { "texlab" },
  settings = {
    texlab = {
      build = {
        onSave = true;
      },
      forwardSearch = {
        -- this should be your PDF viewer executable
        executable = "zathura",
        args = {"--synctex-forward", "%l:1:%f", "%p"},
        onSave = true;
      }
    }
  }
})

-- docker
require("lspconfig").dockerls.setup({
	cmd = { "docker-langserver", "--stdio" },
	root_dir = vim.loop.cwd,
})
