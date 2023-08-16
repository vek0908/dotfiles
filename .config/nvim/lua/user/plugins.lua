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

  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Catppuccin color theme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Should be placed after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

