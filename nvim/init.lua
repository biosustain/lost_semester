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

-- Settings
vim.cmd[[colorscheme tokyonight]]

-- Plugins with Packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use "folke/tokyonight.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

