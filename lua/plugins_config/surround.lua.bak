local config = function()
    -- 1. Disable all default keymaps (this also handles your old 'disabledKeymaps' table)
    vim.g.nvim_surround_no_mappings = true

    require("nvim-surround").setup({
        -- Notice: 'keymaps' and 'disabledKeymaps' are completely removed from here
        surrounds = {},
        aliases = {},
        highlight = {},
        move_cursor = "begin",
        indent_lines = function(start, stop)
            local b = vim.bo
            -- Only re-indent the selection if a formatter is set up already
            if start < stop and (b.equalprg ~= "" or b.indentexpr ~= "" or b.cindent or b.smartindent or b.lisp) then
                vim.cmd(string.format("silent normal! %dG=%dG", start, stop))
            end
        end,
    })

    -- 2. Define your custom keymaps manually
    local map = vim.keymap.set

    -- Normal mode
    map("n", "gs", "<Plug>(nvim-surround-normal)", { desc = "Add surround" })
    map("n", "gss", "<Plug>(nvim-surround-normal-cur)", { desc = "Add surround line" })
    map("n", "gS", "<Plug>(nvim-surround-normal-line)", { desc = "Add surround (block)" })
    
    -- NOTE: In your old config, you had 'normal_line' and 'normal_cur_line' BOTH set to "gS". 
    -- I changed this one to "gSS" to prevent a keymap collision. Change it if you prefer something else!
    map("n", "gSS", "<Plug>(nvim-surround-normal-cur-line)", { desc = "Add surround line (block)" }) 

    -- Visual mode
    map("x", "gs", "<Plug>(nvim-surround-visual)", { desc = "Add surround (visual)" })
    map("x", "gS", "<Plug>(nvim-surround-visual-line)", { desc = "Add surround (visual block)" })

    -- Delete / Change
    map("n", "ds", "<Plug>(nvim-surround-delete)", { desc = "Delete surround" })
    map("n", "cs", "<Plug>(nvim-surround-change)", { desc = "Change surround" })
    map("n", "cS", "<Plug>(nvim-surround-change-line)", { desc = "Change surround (block)" })
end

return {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = config,
}
