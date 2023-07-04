vim.g.indent_blankline_use_treesitter = true
vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#333333 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#444444 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#555555 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#666666 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#777777 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#888888 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guifg=#999999 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent8 guifg=#aaaaaa gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent9 guifg=#bbbbbb gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent10 guifg=#cccccc gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent11 guifg=#dddddd gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent12 guifg=#eeeeee gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent13 guifg=#ffffff gui=nocombine]]
require("indent_blankline").setup{
  char_highlight_list = {
    "IndentBlanklineIndent1",
    -- "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    -- "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    -- "IndentBlanklineIndent6",
    "IndentBlanklineIndent7",
    -- "IndentBlanklineIndent8",
    "IndentBlanklineIndent9",
    -- "IndentBlanklineIndent10",
    "IndentBlanklineIndent11",
    -- "IndentBlanklineIndent12",
    "IndentBlanklineIndent13",
  },
}
