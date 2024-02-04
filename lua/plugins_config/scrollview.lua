return {
    "dstein64/nvim-scrollview",
    event = "BufReadPre",
    config = function()
        require('scrollview').setup({
            scrollview_character = "p",
        })
        vim.g.scrollview_excluded_filetypes = {'NvimTree'}
    end
}
