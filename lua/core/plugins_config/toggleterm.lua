require("toggleterm").setup{
  open_mapping = [[<c-j>]],
  direction = 'tab',
  on_open = function(term)
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-jj>", "exit<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-l>", "lazygit<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-k>", "clear<CR>", { noremap = true, silent = true })
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
  end,
  close_on_exit = true,
}

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end
