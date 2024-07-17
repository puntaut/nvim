local config = function()
    require("trouble").setup {
        use_diagnostic_signs = true -- enabling this will use the signs defined in your LSP client
    }

    local signs = {
        -- Error = "⨉",
        -- Warn = "△",
        -- Info = "i",
        -- Hint = "?",
        -- Error = "►",
        -- Warn = "►",
        -- Info = "►",
        -- Hint = "►",
        Error = "┃", -- Extremely minimal UI
        Warn = "┃",
        Info = "┃",
        Hint = "┃",
    }

    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
end

return {
    "folke/trouble.nvim",
    event = "BufReadPre",
    config = config,
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
