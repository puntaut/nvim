local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<C-e>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<C-i>', ':MoveLine(1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<C-u>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<C-e>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<C-i>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<C-y>', ':MoveHBlock(1)<CR>', opts)
