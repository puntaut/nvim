local config = function()
    require("toggleterm").setup {
        open_mapping = [[<c-x>]],
        direction = 'tab',
        on_open = function(term)
            vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-xx>", "exit<CR>", { noremap = true, silent = true })
            vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-k>", "clear<CR>", { noremap = true, silent = true })
            vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-l>", "lazygit<CR>", { noremap = true, silent = true })
        end,
        close_on_exit = true,
    }
end

return {
    "akinsho/toggleterm.nvim",
    config = config,
}
