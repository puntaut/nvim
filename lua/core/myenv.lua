-- Environment Variable Assignment
if vim.fn.has('unix') == 1 then
  vim.env.SHELL = '/opt/homebrew/bin/fish'
  vim.env.PATH = vim.env.PATH .. ':/opt/homebrew/bin'
  vim.g.python3_host_prog = '/Users/punt/myenv/bin/python'
  vim.api.nvim_command('command! -nargs=* NeovimWget lua vim.fn.system("/opt/homebrew/bin/wget " .. table.concat(vim.fn.expand("<args>"), " "))')
  vim.g.ruby_host_prog = vim.fn.expand("$HOME/gems/bin/neovim-ruby-host")
  vim.g.netrw_wget_cmd = '/opt/homebrew/bin/wget'
  vim.g.loaded_perl_provider = 0
end
