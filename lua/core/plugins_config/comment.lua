require("Comment").setup({
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = "gcc",
        block = "gbb",
    },
    opleader = {
        line = "gc",
        block = "gb",
    },
    extra = {
        above = "gcM",
        below = "gcm",
        eol = "gcZ",
    },
    mappings = {
        basic = true,
        extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
})
