local config = function()
require("nvim-surround").setup {
    keymaps = {
        insert = "<C-o>s",
        insert_line = "<C-o>S",
        normal = "os",
        normal_cur = "oss",
        normal_line = "oS",
        normal_cur_line = "oSS",
        visual = "os",
        visual_line = "oS",
        delete = "ks",
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
end

return {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = config,
}
