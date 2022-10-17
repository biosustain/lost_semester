-- Disable arrow keys
vim.api.nvim_set_keymap("", "<Left>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<Right>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<Up>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<Down>", "<nop>", { noremap = true, silent = true })

-- Registers system clipboard
vim.api.nvim_set_keymap("v", "<C-y>", [["*y :let @+=@*<CR>"]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<C-p>", [["+P]], { noremap = false, silent = true })

-- Better visual model indentation
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- No escape
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })

-- LSP remaps
local lsp_opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", lsp_opts)
vim.api.nvim_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", lsp_opts)
vim.api.nvim_set_keymap("n", "gv", "<cmd>lua vim.diagnostic.goto_prev()<CR>", lsp_opts)
vim.api.nvim_set_keymap("n", "gb", "<cmd>lua vim.diagnostic.goto_next()<CR>", lsp_opts)
vim.api.nvim_set_keymap("n", ";", "<cmd>lua vim.diagnostic.open_float()<CR>", lsp_opts)
