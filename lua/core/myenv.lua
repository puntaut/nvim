-- Environment Variable Assignment
if vim.fn.has('unix') == 1 then
  vim.env.SHELL = '/opt/homebrew/bin/fish'
  vim.env.PATH = vim.env.PATH .. ':/opt/homebrew/bin'
  vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
  vim.g.ruby_host_prog = '/usr/local/bin/neovim-ruby-host'
  vim.g.loaded_perl_provider = 0
end
