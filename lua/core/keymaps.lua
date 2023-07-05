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

-- Word Navigation
map('', 'O', 'w', {})
map('', 'N', 'b', {})

-- Indentation and Dedentation
map('v', '<', '<gv', {})
map('v', '>', '>gv', {})
map('n', '<', 'v<', {})
map('n', '>', 'v>', {})

-- Redo in Normal Mode
map('', 'U', '<C-r>', {})

-- Registered Yank and Deleted {z,x}
map('', 'xy', '"xy', {})
map('', 'xD', '"xd', {})
map('', 'zy', '"zy', {})
map('', 'zD', '"zd', {})

-- Registered Paste {z,x}
map('', 'xp', '"xp', {})
map('', 'xP', '"xP', {})
map('', 'zp', '"zp', {})
map('', 'zP', '"zP', {})

-- Executing Registered Command {z,x}
map('', '|', '@z', {})
map('', '&', '@x', {})

-- Delete and Yank to System Clipboard
map('', 'd', '"_d', {})
map('n', 'dd', '"_dd', {})
map('', 'D', '"+d', {})
map('n', 'DD', '"+dd', {})

-- Change but not Yank to System Clipboard
map('', 'c', '"_c', {})
map('n', 'cc', '"_cc', {})
map('', 'C', '"+c', {})
map('n', 'CC', '"+cc', {})

-- Change but not Yank to System Clipboard
map('', 's', '"_s', {})
map('', 'S', '"+s', {})

-- Yank to System Clipboard
map('', 'y', '"+y', {})
map('n', 'yy', '"+yy', {})

-- Paste from System Clipboard
map('', 'p', '"+p', {})
map('', 'P', '"+P', {})

-- Insert Mode and Insert Line
map('', 'k', 'i', {})
map('', 'K', 'I', {})
map('', 'l', 'o<esc>', {})
map('', 'L', 'O<esc>', {})
map('', 'm', 'o', {})
map('', 'M', 'O', {})

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
map('', 'W', ':w<CR>', {})

-- Tab Identation
map('n', '<Tab>', 'i<Tab>', {})

-- Insert Mode Delete
map('i', '<M-BS>','<C-g>u<Cmd>normal! bdw<CR>', {})
map('c', '<M-BS>','<C-g>u<Cmd>normal! bdw<CR>', {})
