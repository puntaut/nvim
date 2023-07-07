require("toggleterm").setup{
  open_mapping = [[<c-j>]],
  direction = 'tab',
  on_open = function(term)
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-jj>", "exit<CR>", { noremap = true, silent = true })
  end,
  close_on_exit = true,
}
