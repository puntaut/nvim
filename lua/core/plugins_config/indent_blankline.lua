vim.g.indent_blankline_use_treesitter = true
vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent0 guifg=#3e3e3e gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#5c5c5c gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#7a7a7a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#989898 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#b6b6b6 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#d4d4d4 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#f2f2f2 gui=nocombine]]
require("indent_blankline").setup{
  char_highlight_list = {
    "IndentBlanklineIndent0",
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
}
