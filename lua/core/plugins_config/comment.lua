require("Comment").setup({
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
        eol = "ocZ",
    },
    mappings = {
        basic = true,
        extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
})
