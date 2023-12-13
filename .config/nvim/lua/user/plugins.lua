-- Bootstrapping snippet to automatically install and set up packer.nvim (should be placed BEFORE the first usage of packer)
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

  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Nvim tree
  use { 'nvim-tree/nvim-tree.lua', tag = "compat-nvim-0.7" }

  -- Lualine
  use { 'nvim-lualine/lualine.nvim', commit = "45e27ca739c7be6c49e5496d14fcf45a303c3a63" }

  -- Bufferline
  use { 'akinsho/bufferline.nvim', tag = "v3.0.0" }

  -- Gitsigns
  use { 'lewis6991/gitsigns.nvim', tag = "v0.6" }

  -- Icons
  use { 'nvim-tree/nvim-web-devicons', commit = "9ab9b0b894b2388a9dbcdee5f00ce72e25d85bf9" }

  -- Catppuccin color theme
  use { "catppuccin/nvim", tag = "v1.3.0", as = "catppuccin" }

  -- Should be placed after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

