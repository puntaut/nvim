require("bufferline").setup()

local bufferline = require('bufferline')
bufferline.setup {
  options = {
    mode = "buffers", -- "buffers" | "tab" Changing to this to show Bufferline
    separator_style = 'slant',
    always_show_bufferline = false,
  },
}

-- Pick Tab from Number
vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>')
vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>')
vim.keymap.set('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>')
vim.keymap.set('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>')
vim.keymap.set('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>')

-- Pick to Next or Previous Tab
vim.keymap.set('n', '<leader>[', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>]', ':BufferLineCycleNext<CR>')

-- Move to Next or Previous Tab
vim.keymap.set('n', '<C-[>', ':BufferLineMovePrev<CR>')
vim.keymap.set('n', '<C-]>', ':BufferLineMoveNext<CR>')

-- Pick and Close Tab
vim.keymap.set('n', '<leader>q', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>g', ':BufferLinePick<CR>')
vim.keymap.set('n', '<leader>kk', ':BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<leader>km', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>kh', ':BufferLineCloseLeft<CR>')
