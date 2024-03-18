local config = function()
    require("Comment").setup {
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
            line = "ycc",
            block = "ybb",
        },
        opleader = {
            line = "yc",
            block = "yb",
        },
        extra = {
            above = "ycW",
            below = "ycw",
            eol = "ycU",
        },
        mappings = {
            basic = true,
            extra = true,
        },
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
        post_hook = nil,
    }
end

return {
    "numToStr/Comment.nvim",
    config = config,
    event = "BufReadPre",
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
}
