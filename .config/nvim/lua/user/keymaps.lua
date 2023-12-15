-- Some basic settings
local opts = { noremap = true, silent = true}
local term_opts = { silent = true}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Spacebar as a leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal mode

-- Navigation for windows
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-h>", "<C-w>h", opts)

-- Resizing for windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)

-- Navigation for buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

-- Explorer (NvimTree)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Visual mode

-- Make indent mode remain after the first input
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual block mode

-- Move highlighted lines up and down
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)


