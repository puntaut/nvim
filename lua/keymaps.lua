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

-- -- Change In Word Using Enter
-- map('n', '<CR>', '"_ciw', {})
-- map('n', '<S-CR>', '"_c<cmd>lua require("various-textobjs").subword(true)<CR>', {})

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
map('', 'k', 'd', {})
map('n', 'kk', 'dd', {})
map('', 'K', '"_d', {})
map('n', 'KK', '"_dd', {})

-- Change but not Yank to System Clipboard
map('', 'c', '"_c', {})
map('n', 'cc', '"_cc', {})
map('', 'C', 'c', {})
map('n', 'CC', 'cc', {})

-- Map for macro
map('n', 'X', '@x', {})
map('n', 'S', '@s', {})
map('n', '@', '@@', {})
-- map('n', 'Q', '@q', {})

-- Change but not Yank to System Clipboard
map('', 's', '"_s', {})
map('', 'x', '"_x', {})

-- Yank to System Clipboard
-- Old version
-- map('x', 'Y', 'ma"+y`a', {})
-- map('n', 'Y', '"+y', {})
-- map('n', 'YY', '"+yy', {})
-- map('x', 'y', 'ma"0y`a', {})
-- map('n', 'y', '"0y', {})
-- map('n', 'yy', '"0yy', {})

-- New version
map('x', 'Y', 'may`a', {})
map('n', 'Y', '"+y', {})
map('n', 'YY', '"+yy', {})
map('x', 'y', 'may`a', {})
-- map('n', 'y', 'y', {})
-- map('n', 'yy', 'yy', {})

-- Paste from System Clipboard
map('', 'p', 'p', {})
map('', 'P', 'P', {})
-- map('', '<C-p>', '"+p', {})

-- Insert Mode and Insert Line
map('', 'h', 'i', {})
map('', 'H', 'I', {})
map('', 'l', 'a', {})
map('', 'L', 'A', {})
map('', 'j', 'o<esc>', {})
map('', 'J', 'O<esc>', {})
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
map('', 'Q', '<Cmd>bd<CR>', {})
map('', 'W', '<Cmd>w<CR>', {})
-- map('', '<D-w>', '<Cmd>bd<CR>', {})
-- map('', '<D-s>', '<Cmd>w<CR>', {})

-- Tab Identation
map('n', '<Tab>', 'i<Tab>', {})

-- Insert Mode Delete
-- map('i', '<M-BS>', '<C-g>u<Cmd>normal! bdw<CR>', {})
map('i', '<M-BS>', '<C-w>', {})
-- map('c', '<M-BS>', '<C-w>', {}) -- this doesn't work
