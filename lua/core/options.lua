-- vim.opt.clipboard:append("unnamedplus")

-- Mapleader
vim.g.mapleader = ' '

-- Identation
vim.g.python_recommended_style = 0
vim.o.showcmd = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.opt.iskeyword:append("-")

-- Backup options
vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

-- Searching
vim.o.incsearch = true

-- UI options
vim.o.relativenumber = true
vim.o.number = true
vim.o.cursorline = false
vim.o.guicursor = vim.o.guicursor .. ',a:blinkon0'
vim.opt.fillchars = { eob = " " }

-- Left Column width
vim.o.numberwidth = 2
vim.o.signcolumn = "yes:1"
