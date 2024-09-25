local config = function()
    require("Comment").setup {
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
            line = "kcc",
            block = "kbb",
        },
        opleader = {
            line = "kc",
            block = "kb",
        },
        extra = {
            above = "kcW",
            below = "kcw",
            eol = "kcU",
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
