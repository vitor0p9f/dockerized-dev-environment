local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- OPTIONS --

-- Appearance

vim.wo.number = true
vim.opt.termguicolors = true

-- Indentation

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.wo.wrap = true
vim.wo.linebreak = true

-- Keybinds

vim.g.mapleader = " "

-- Clipboard

vim.opt.clipboard = "unnamedplus"

-- FUNCTIONS --

-- Toggle bewteen relative numbers in insert mode and absolute numbers in visual mode

autocmd("InsertEnter", {
  callback = function()
    vim.wo.number = false
    vim.wo.relativenumber = true
  end,
})

autocmd("InsertLeave", {
  callback = function()
    vim.wo.relativenumber = false
    vim.wo.number = true
  end,
})
