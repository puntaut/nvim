-- Mapleader
vim.g.mapleader = ' '

-- Environment Variable Assignment
if vim.fn.has('unix') == 1 then
    vim.env.SHELL = '/opt/homebrew/bin/fish'
    vim.env.PATH = vim.env.PATH .. ':/opt/homebrew/bin'
    vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
    vim.g.loaded_ruby_provider = 0
    vim.g.loaded_perl_provider = 0
end
