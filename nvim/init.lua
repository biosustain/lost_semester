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
