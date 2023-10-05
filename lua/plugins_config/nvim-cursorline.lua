local config = function()
require("nvim-cursorline").setup {
    cursorline = {
        enable = false,
        timeout = 10,
        number = false,
    },
    cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
    }
}
end

return {
    "yamatsum/nvim-cursorline",
    config = config,
}
