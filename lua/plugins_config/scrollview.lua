return {
    "dstein64/nvim-scrollview",
    event = "BufReadPre",
    config = function()
        require('scrollview').setup({})
    end
}
