require("various-textobjs").setup{
  disabledKeymaps = {
    "n",
    "ik",
    "ak",
    "iv",
    "av",
    "L",
    "in",
    "an",
    "!",
    "gw",
    "gW",
    "il",
    "al",
    "ic",
    "ac",
    "iC",
    "aC",
    "ix",
    "ax",
    "i/",
    "a/",
    "iD",
    "aD",
    "iP",
    "aP",
  },
}

local keymap = vim.keymap.set

-- Indentation
keymap({ "o", "x" }, "kk", "<cmd>lua require('various-textobjs').indentation(true, true)<CR>")
keymap({ "o", "x" }, "kK", "<cmd>lua require('various-textobjs').indentation(true, false)<CR>")
keymap({ "o", "x" }, "ak", "<cmd>lua require('various-textobjs').indentation(false, false)<CR>")
keymap({ "o", "x" }, "aK", "<cmd>lua require('various-textobjs').indentation(false, true)<CR>")

-- Subword
keymap({ "o", "x" }, "kS", '<cmd>lua require("various-textobjs").subword(true)<CR>')
keymap({ "o", "x" }, "aS", '<cmd>lua require("various-textobjs").subword(false)<CR>')

-- Line
keymap({ "o", "x" }, "kl", "<cmd>lua require('various-textobjs').lineCharacterwise(true)<CR>")
keymap({ "o", "x" }, "al", "<cmd>lua require('various-textobjs').lineCharacterwise(false)<CR>")

-- Next Closing Bracket
keymap({ "o", "x" }, "%", "<cmd>lua require('various-textobjs').toNextClosingBracket()<CR>")

-- Rest of Paragraph
keymap({ "o", "x" }, "rp", "<cmd>lua require('various-textobjs').restOfParagraph()<CR>")

-- Rest of Indentation
keymap({ "o", "x" }, "rk", "<cmd>lua require('various-textobjs').restOfIndentation()<CR>")

-- Entire Buffer
keymap({ "o", "x" }, "gG", "<cmd>lua require('various-textobjs').entireBuffer()<CR>")

-- Chain Member
keymap({ "o", "x" }, "km", "<cmd>lua require('various-textobjs').chainMember(true)<CR>")
keymap({ "o", "x" }, "am", "<cmd>lua require('various-textobjs').chainMember(false)<CR>")

-- Closed Fold
keymap({ "o", "x" }, "kz", "<cmd>lua require('various-textobjs').closedFold(true)<CR>")
keymap({ "o", "x" }, "az", "<cmd>lua require('various-textobjs').closedFold(false)<CR>")


