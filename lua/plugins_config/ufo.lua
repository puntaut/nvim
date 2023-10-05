local config = function()
    vim.o.foldcolumn = '0'
    vim.o.foldlevel = 50 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 50
    vim.o.foldenable = true
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    require('ufo').setup()
end

return {
    "kevinhwang91/nvim-ufo",
    config = config,
    dependencies = { "kevinhwang91/promise-async" },
}
