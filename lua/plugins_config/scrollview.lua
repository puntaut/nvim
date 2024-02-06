return {
    "dstein64/nvim-scrollview",
    event = "BufReadPre",
    config = function()
        require('scrollview').setup({})
        vim.g.scrollview_excluded_filetypes = {'NvimTree'}
    end
}
