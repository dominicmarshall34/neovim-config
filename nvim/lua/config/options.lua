-- Set leader key to space (must be set before lazy)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic options
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.termguicolors = true  -- Enable 24-bit colors

-- Indentation settings
vim.opt.tabstop = 4      -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4   -- Number of spaces for each indent level
vim.opt.expandtab = true -- Convert tabs to spaces

-- Completion settings
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' } -- LSP completion behavior
