require("nvim-surround").setup {
    keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "gs",
        normal_cur = "gss",
        normal_line = "gS",
        normal_cur_line = "gSS",
        visual = "gs",
        visual_line = "gS",
        delete = "qs",
        change = "cs",
        change_line = "cS",
    },
    disabledKeymaps = {
        "<C-g>s",
        "<C-g>S",
    },
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
}
