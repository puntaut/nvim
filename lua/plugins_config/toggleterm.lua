local config = function()
    require("toggleterm").setup()
    vim.keymap.set('', '<C-d>', '<cmd>ToggleTerm<CR>')
    vim.keymap.set('t', '<esc>', '<C-\\><C-n>')
end

return {
    -- Fuzzy Finder
    "akinsho/toggleterm.nvim",
    config = config,
}
