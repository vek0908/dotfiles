-- Disabling netrw for nvim-tree plugin
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Disabling auto-setup for barbar
vim.g.barbar_auto_setup = false

-- Colors (NOTE: Make sure that terminal supports it)
vim.o.termguicolors = true

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Indentation (NOTE: Smartindent and autoindent are normally used together)
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.list = true
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- Wrap and scroll
vim.o.wrap = false
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5

-- Case sensitivity (NOTE: Ignerecase and smartcase are normally used together)
vim.o.ignorecase = true
vim.o.smartcase = true

-- Clipboard integration
vim.o.clipboard = "unnamedplus"

-- Mouse support
vim.o.mouse = 'a'

