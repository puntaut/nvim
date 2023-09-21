local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Arrow Navigation
map('', 'd', 'h', {})
map('', 'e', 'k', {})
map('', 'a', 'j', {})
map('', 'i', 'l', {})

-- Window Navigation
map('', '<leader>d', '<C-w>h', {})
map('', '<leader>e', '<C-w>k', {})
map('', '<leader>a', '<C-w>j', {})
map('', '<leader>i', '<C-w>l', {})

-- Page Navigation
map('', '<C-k>', '<C-u>zz', {})
map('', '<C-l>', '<C-d>zz', {})

-- Change In Word Using Enter
map('n', '<CR>', '"0ciw', {})
map('n', '<S-CR>', '"+ciw', {})

-- Code block Navigation
map('n', '{', '{zz', {})
map('n', '}', '}zz', {})
map('n', '(', '(zz', {})
map('n', ')', ')zz', {})

-- Word Navigation
map('', 'I', 'w', {})
map('', 'D', 'b', {})

-- Indentation and Dedentation
map('v', '<', '<gv', {})
map('v', '>', '>gv', {})
map('n', '<', 'v<', {})
map('n', '>', 'v>', {})

-- Redo in Normal Mode
map('n', 'U', '<C-r>', {})

-- Delete and Yank to System Clipboard
map('', 'j', '"0d', {})
map('n', 'jj', '"0dd', {})
map('', 'J', '"+d', {})
map('n', 'JJ', '"+dd', {})

-- Change but not Yank to System Clipboard
map('', 'c', '"0c', {})
map('n', 'cc', '"0cc', {})
map('', 'C', '"+c', {})
map('n', 'CC', '"+cc', {})

-- Change but not Yank to System Clipboard
map('', 's', '"_s', {})
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
map('', 'z', 'a', {})
map('', 'Z', 'A', {})
map('', 'h', 'o<esc>', {})
map('', 'H', 'O<esc>', {})
map('', 'm', 'o', {})
map('', 'M', 'O', {})

-- Show Me Documents
-- map('', 'J', 'K', {})

-- Next and Previous
-- map('', 'h', 'n', {})
-- map('', 'H', 'N', {})

-- Toggle Uppercase-Lowercase Canceling Moving Cursor
map('n', '~', '~h', {})
map('n', '~~', 'V~', {})

-- Scroll Up and Scroll Down
map('', 'E', '2kzz', {})
map('', 'A', '2jzz', {})

-- Save and Close Buffer
map('', 'Q', ':bd<CR>', {})
map('', 'FQ', ':q!<CR>', {})
map('', 'W', ':w<CR>', {})

-- Tab Identation
map('n', '<Tab>', 'i<Tab>', {})

-- Insert Mode Delete
map('i', '<M-BS>', '<C-g>u<Cmd>normal! bdw<CR>', {})
map('c', '<M-BS>', '<C-g>u<Cmd>normal! bdw<CR>', {})
