local config = function()
    require("various-textobjs").setup {
        keymaps = {
            useDefaults = false,
        },
    }

    local keymap = vim.keymap.set

    -- Indentation
    keymap({ "o", "x" }, "ii", "<cmd>lua require('various-textobjs').indentation('inner', 'inner')<CR>")
    keymap({ "o", "x" }, "ai", "<cmd>lua require('various-textobjs').indentation('outer', 'outer')<CR>")

    -- Subword
    keymap({ "o", "x" }, "iS", "<cmd>lua require('various-textobjs').subword('inner')<CR>")
    keymap({ "o", "x" }, "aS", "<cmd>lua require('various-textobjs').subword('inner')<CR>")

    -- Line
    keymap({ "o", "x" }, "il", "<cmd>lua require('various-textobjs').lineCharacterwise(true)<CR>")
    keymap({ "o", "x" }, "al", "<cmd>lua require('various-textobjs').lineCharacterwise(false)<CR>")

    -- Next Closing Bracket
    -- keymap({ "o", "x" }, "%", "<cmd>lua require('various-textobjs').toNextClosingBracket()<CR>")

    -- Rest of Paragraph
    keymap({ "o", "x" }, "rp", "<cmd>lua require('various-textobjs').restOfParagraph()<CR>")

    -- Rest of Indentation
    keymap({ "o", "x" }, "ri", "<cmd>lua require('various-textobjs').restOfIndentation()<CR>")

    -- Entire Buffer
    keymap({ "o", "x" }, "gG", "<cmd>lua require('various-textobjs').entireBuffer()<CR>")

    -- -- Near EoL
    -- keymap({ "o", "x" }, "E", "<cmd>lua require('various-textobjs').nearEoL()<CR>")
end

return {
    "chrisgrieser/nvim-various-textobjs",
    -- event = "BufReadPre",
    lazy = false,
    config = config,
}
