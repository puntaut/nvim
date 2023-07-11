vim.g.indent_blankline_use_treesitter = true
vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent0 guifg=#484848 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#5f5f5f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#767676 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#8d8d8d gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#a4a4a4 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#bbbbbb gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#d2d2d2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guifg=#e9e9e9 gui=nocombine]]
require("indent_blankline").setup{
  char_highlight_list = {
    "IndentBlanklineIndent0",
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
    "IndentBlanklineIndent7",
  },
}
