local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- -- Arrow Navigation
-- map('', 'j', 'h', {})
-- map('', 'k', 'k', {})
-- map('', 'l', 'j', {})
-- map('', ';', 'l', {})

-- -- Redo Undo move
-- map('', "'", ';', {})
-- map('', '"', ',', {})

-- -- -- Window Navigation
-- -- map('', '<leader>d', '<C-w>h', {})
-- -- map('', '<leader>e', '<C-w>k', {})
-- -- map('', '<leader>a', '<C-w>j', {})
-- -- map('', '<leader>i', '<C-w>l', {})
--
-- -- -- Window Navigation
-- map('', '<C-j>', '<C-w>h', {})
-- map('', '<C-k>', '<C-w>k', {})
-- map('', '<C-l>', '<C-w>j', {})
-- map('', '<C-;>', '<C-w>l', {})
-- map('', '<C-w>', '<cmd>close<cr>', {})
-- map('', '<C-t>', '<cmd>enew<cr>', {})
-- map('', '<C-e>', '<cmd>bo split<cr>', {})
-- map('', '<C-r>', '<cmd>bo vert split<cr>', {})

-- Canceling Search Mode
map('', '\\', '<cmd>nohlsearch<cr>', {})

-- -- Window Moving
-- map('', '<m-c-s-j>', '<C-w>H', {})
-- map('', '<m-c-s-k>', '<C-w>K', {})
-- map('', '<m-c-s-l>', '<C-w>J', {})
-- map('', '<m-c-s-y>', '<C-w>L', {}) -- There is no Semicolon mapping in Terminal So we need kitty config to help
--
-- -- Window Resizing
-- map('', '<m-c-j>', '6<C-w><', {})
-- map('', '<m-c-k>', '2<C-w>-', {})
-- map('', '<m-c-l>', '2<C-w>+', {})
-- map('', '<m-c-y>', '6<C-w>>', {}) -- There is no Semicolon mapping in Terminal So we need kitty config to help

-- -- Page Navigation
-- map('', '<C-k>', '<C-u>zz', {})
-- map('', '<C-l>', '<C-d>zz', {})

-- Change In Word Using Enter
map('n', '<CR>', '"_ciw', {})
map('n', '<S-CR>', '"_c<cmd>lua require("various-textobjs").subword(true)<CR>', {})

-- Code block Navigation
map('n', '{', '{zz', {})
map('n', '}', '}zz', {})
map('n', '(', '(zz', {})
map('n', ')', ')zz', {})

-- Next and Previous Navigation
map('n', 'n', 'nzz', {})
map('n', 'N', 'Nzz', {})

-- -- Word Navigation
-- map('', ':', 'W', {})
-- map('', 'J', 'B', {})

-- -- Indentation and Dedentation
-- map('v', '<', '<gv', {})
-- map('v', '>', '>gv', {})
-- map('n', '<', 'v<', {})
-- map('n', '>', 'v>', {})

-- -- Redo in Normal Mode
-- map('n', 'z', 'u', {})
-- map('n', 'Z', '<C-r>', {})

-- Delete and Yank to System Clipboard
-- map('', 'd', '"0d', {})
-- map('n', 'dd', '"0dd', {})
map('', 'D', '"_d', {})
map('n', 'DD', '"_dd', {})

-- Change but not Yank to System Clipboard
map('', 'c', '"_c', {})
map('n', 'cc', '"_cc', {})
-- map('', 'C', '"0c', {})
-- map('n', 'CC', '"0cc', {})

-- -- Map for macro
-- map('n', 'X', '@x', {})
-- map('n', 'S', '@s', {})
map('n', '@', '@@', {})
map('n', 'Q', '@q', {})

-- -- -- Change but not Yank to System Clipboard
-- map('', 'S', '"_s', {})
-- map('', 's', '"_x', {})

-- Yank to System Clipboard
-- Old version
-- map('x', 'Y', 'ma"+y`a', {})
-- map('n', 'Y', '"+y', {})
-- map('n', 'YY', '"+yy', {})
-- map('x', 'y', 'ma"0y`a', {})
-- map('n', 'y', '"0y', {})
-- map('n', 'yy', '"0yy', {})

-- -- New version
-- map('x', 'Y', 'ma"+y`a', {})
-- map('n', 'Y', '"+y', {})
-- map('n', 'YY', '"+yy', {})
-- map('x', 'y', 'ma"0y`a', {})
-- map('n', 'y', '"0y', {})
-- map('n', 'yy', '"0yy', {})

-- Lastest version
map('x', 'Y', 'ma"+y`a', {})
map('n', 'Y', '"+y', {})
map('n', 'YY', '"+yy', {})
map('x', 'y', 'may`a', {})

-- -- Paste from System Clipboard
-- map('', 'p', '"0p', {})
-- map('', 'P', '"0P', {})
-- -- map('', '<C-p>', '"+p', {})

-- -- Insert Mode and Insert Line
-- map('', 'o', 'i', {})
-- map('', 'O', 'I', {})
-- map('', 'u', 'a', {})
-- map('', 'U', 'A', {})
-- map('', 'm', 'o<esc>', {})
-- map('', 'M', 'O<esc>', {})
-- map('', 'w', 'o', {})
-- map('', 'W', 'O', {})

-- Show Me Documents
-- map('', 'J', 'K', {})

-- Next and Previous
-- map('', 'h', 'n', {})
-- map('', 'H', 'N', {})

-- -- Toggle Uppercase-Lowercase Canceling Moving Cursor
-- map('n', '~', '~h', {})
-- map('n', '~~', 'V~', {})

-- -- -- Scroll Up and Scroll Down
-- -- map('', 'E', '2kzz', {})
-- -- map('', 'A', '2jzz', {})
map('', 'K', '', {})
map('', 'J', '', {})

-- Save and Close Buffer
-- map('', 'W', '<Cmd>bd<CR>', {})
map('', '<D-s>', '<Cmd>update<CR>', {})
-- map('', '<D-w>', '<Cmd>bd<CR>', {})
-- map('', '<D-s>', '<Cmd>w<CR>', {})

-- -- Tab Identation
-- map('n', '<Tab>', 'i<Tab>', {})

-- Insert Mode Delete
-- map('i', '<M-BS>', '<C-g>u<Cmd>normal! bdw<CR>', {})
map('i', '<M-BS>', '<C-w>', {})
map('i', '<M-Left>', '<C-o>b', {})
map('i', '<M-Right>', '<C-o>w', {})
map('i', '<D-Left>', '<C-o>0', {})
map('i', '<D-Right>', '<C-o>$', {})
map('i', '<D-Up>', '<C-o>gg<C-o>0', {})
map('i', '<D-Down>', '<C-o>G<C-o>$', {})
-- map('c', '<M-BS>', '<C-w>', {}) -- this doesn't work
