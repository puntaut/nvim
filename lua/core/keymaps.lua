local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Arrow Navigation
map('', 'n', 'h', {})
map('', 'e', 'k', {})
map('', 'i', 'j', {})
map('', 'o', 'l', {})

-- Window Navigation
map('', '<leader>n', '<C-w>h', {})
map('', '<leader>e', '<C-w>k', {})
map('', '<leader>i', '<C-w>j', {})
map('', '<leader>o', '<C-w>l', {})

-- Change In Word Using Enter
map('n', '<CR>', '"0ciw', {})
map('n', '<S-CR>', '"+ciw', {})

-- Word Navigation
map('', 'O', 'w', {})
map('', 'N', 'b', {})

-- Indentation and Dedentation
map('v', '<', '<gv', {})
map('v', '>', '>gv', {})
map('n', '<', 'v<', {})
map('n', '>', 'v>', {})

-- Redo in Normal Mode
map('n', 'U', '<C-r>', {})

-- Delete and Yank to System Clipboard
map('', 'd', '"0d', {})
map('n', 'dd', '"0dd', {})
map('', 'D', '"+d', {})
map('n', 'DD', '"+dd', {})

-- Change but not Yank to System Clipboard
map('', 'c', '"0c', {})
map('n', 'cc', '"0cc', {})
map('', 'C', '"+c', {})
map('n', 'CC', '"+cc', {})

-- Change but not Yank to System Clipboard
-- map('', 's', '"_s', {})
map('', 's', '"0s', {})
map('', 'S', '"+s', {})

-- Yank to System Clipboard
map('x', 'Y', 'ma"+y`a', {})
map('n', 'Y', '"+y', {})
map('n', 'YY', '"+yy', {})
map('x', 'y', 'ma"0y`a', {})
map('n', 'y', '"0y', {})
map('n', 'yy', '"0yy', {})

-- Paste from System Clipboard
map('', 'p', '"0p', {})
map('', 'P', '"0P', {})
map('', '<C-p>', '"+p', {})

-- Insert Mode and Insert Line
map('', 'k', 'i', {})
map('', 'K', 'I', {})
map('', 'l', 'o<esc>', {})
map('', 'L', 'O<esc>', {})
map('', 'm', 'o', {})
map('', 'M', 'O', {})

-- Show Me Documents
map('', 'J', 'K', {})

-- Next and Previous
map('', 'h', 'n', {})
map('', 'H', 'N', {})

-- Toggle Uppercase-Lowercase Canceling Moving Cursor
map('n', '~', '~h', {})
map('n', '~~', 'V~', {})

-- Scroll Up and Scroll Down
map('', 'E', '2kzz', {})
map('', 'I', '2jzz', {})

-- Save and Close Buffer
map('', 'Q', ':bd<CR>', {})
map('', 'FQ', ':q!<CR>', {})
map('', 'W', ':w<CR>', {})

-- Tab Identation
map('n', '<Tab>', 'i<Tab>', {})

-- Insert Mode Delete
map('i', '<M-BS>', '<C-g>u<Cmd>normal! bdw<CR>', {})
map('c', '<M-BS>', '<C-g>u<Cmd>normal! bdw<CR>', {})
