-- -- for neovide
-- if vim.g.neovide then
--     -- local alpha = function()
--     --     return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
--     -- end
-- vim.keymap.set('v', '<D-c>', '"+y')         -- Copy
-- vim.keymap.set('n', '<D-v>', 'a<C-R><C-P>+<esc>')         -- Paste normal mode
-- vim.keymap.set('v', '<D-v>', '"+P')         -- Paste visual mode
-- vim.keymap.set('c', '<D-v>', '<C-R>+')      -- Paste command mode
-- vim.keymap.set('i', '<D-v>', '<C-R><C-P>+')  -- Paste insert mode
-- vim.keymap.set('i', '<D-bs>', '<C-U>')  -- Delete line insert mode
-- vim.keymap.set('c', '<D-bs>', '<C-U>')  -- Delete line insert mode
-- vim.keymap.set('n', '<D-a>', 'v<cmd>lua require("various-textobjs").entireBuffer()<CR>')  -- Paste insert mode
-- vim.keymap.set('v', '<D-a>', '<cmd>lua require("various-textobjs").entireBuffer()<CR>')  -- Paste insert mode
-- vim.keymap.set('', '<D-z>', 'u')
-- vim.keymap.set('', '<D-Z>', '<C-r>')
--     -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
--     -- vim.g.neovide_transparency = 0.0
--     -- vim.g.transparency = 1.0
--     -- vim.g.neovide_window_floating_opacity = 0.8
--     -- vim.g.neovide_background_color = "#191723" .. alpha()
--     -- vim.g.neovide_floating_blur_amount_x = 10.0
--     -- vim.g.neovide_floating_blur_amount_y = 10.0
--     vim.o.guifont = "JetBrains Mono NL Light:h14"
--     vim.g.neovide_scroll_animation_length = 0
--     vim.g.neovide_cursor_animation_length = 0.01
--     vim.g.neovide_cursor_trail_size = 0.8
-- end

-- CPU and Memory optimization
-- vim.opt.synmaxcol = 240
vim.opt.history = 100
vim.opt.shortmess:append "sI"
vim.opt.swapfile = false

vim.opt.clipboard:append("unnamedplus")
vim.opt.paste = false
vim.g.loaded_matchit = 1 -- Don't Delete this!!! This line achieve to not delay up and down move in Visual mode

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- Identation
vim.g.python_recommended_style = 0
vim.o.showcmd = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.opt.iskeyword:append("-")

-- Backup options
vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

-- Searching
vim.o.incsearch = true
vim.o.smartcase = true
vim.o.ignorecase = true

-- UI options
vim.o.relativenumber = true
vim.o.number = true
vim.o.cursorline = false
vim.o.guicursor = vim.o.guicursor .. ',a:blinkon0'
vim.opt.fillchars = { eob = " " }

-- Left Column width
vim.o.numberwidth = 4
vim.o.signcolumn = "yes:1"
vim.diagnostic.config({ severity_sort = true })

-- Blinking & Gui of Cursor
vim.o.guicursor = "n-v-c-sm:block,i-c-ci-ve:ver25,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon300-Cursor/lCursor"

-- This configured directly to nvim diagnostic config
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '┃', -- or other icon of your choice here, this is just what my config has:
            [vim.diagnostic.severity.WARN] = '┃',
            [vim.diagnostic.severity.INFO] = '┃',
            [vim.diagnostic.severity.HINT] = '┃',
        },
    },
})
