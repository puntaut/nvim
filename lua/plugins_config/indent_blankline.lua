local config = function()
    local hooks = require "ibl.hooks"
    local highlight = {
        "brooo",
    }
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "brooo", { fg = "#3f3c56" })
        -- vim.api.nvim_set_hl(0, "brooo", { fg = "#d4ced1" })
    end)
    require("ibl").setup {
        indent = { highlight = highlight, char = "│" },
        scope = { enabled = false },
    }
end

return {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = config,
}
