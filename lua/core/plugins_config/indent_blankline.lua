vim.g.indent_blankline_use_treesitter = true
vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent0 guifg=#4f4f4f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#666666 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#7d7d7d gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#949494 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#ababab gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#c2c2c2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#d9d9d9 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guifg=#f0f0f0 gui=nocombine]]
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
