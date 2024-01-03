local config = function()
    require("Comment").setup {
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
            line = "occ",
            block = "obb",
        },
        opleader = {
            line = "oc",
            block = "ob",
        },
        extra = {
            above = "ocM",
            below = "ocm",
            eol = "ocL",
        },
        mappings = {
            basic = true,
            extra = true,
        },
        pre_hook = nil,
        post_hook = nil,
    }
end

return {
    'numToStr/Comment.nvim',
    config = config,
    event = "BufReadPre",
}
