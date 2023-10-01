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
vim.keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>')
vim.keymap.set('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>')
vim.keymap.set('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>')
vim.keymap.set('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>')
vim.keymap.set('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<CR>')

-- Pick to Next or Previous Tab
vim.keymap.set('n', '<leader>!', '<cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>?', '<cmd>BufferLineCycleNext<CR>')

-- Move to Next or Previous Tab
vim.keymap.set('n', '<C-[>', '<cmd>BufferLineMovePrev<CR>')
vim.keymap.set('n', '<C-]>', '<cmd>BufferLineMoveNext<CR>')

-- Pick and Close Tab
vim.keymap.set('n', '<leader>pp', '<cmd>BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<leader>pg', '<cmd>BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>pc', '<cmd>BufferLineCloseLeft<CR>')
