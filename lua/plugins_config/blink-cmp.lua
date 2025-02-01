return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = '*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = 'none',
            -- ['<C-space>'] = { 'show_documentation', 'hide_documentation' },
            ['<C-f>h'] = { 'hide' },

            ['<S-CR>'] = { 'select_and_accept' },
            ['<C-y>'] = { 'select_and_accept' },

            ['<Up>'] = { 'select_prev', 'fallback' },
            ['<Down>'] = { 'select_next', 'fallback' },
            -- ['<C-p>'] = { 'select_prev', 'fallback' },
            -- ['<C-n>'] = { 'select_next', 'fallback' },

            ['<C-k>'] = { 'scroll_documentation_up', 'fallback' },
            ['<C-l>'] = { 'scroll_documentation_down', 'fallback' },

            ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
            ['<S-Tab>'] = { 'select_next', 'snippet_backward', 'fallback' },

            ['<C-f>s'] = { 'show_signature', 'hide_signature', 'fallback' },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },
        completion = {
            documentation = {
                auto_show = true
            }
        },
        signature = {
            enabled = true,
            window = {
                show_documentation = true,
            },
            trigger = {
                enabled = true,
            },
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
            cmdline = function()
                local type = vim.fn.getcmdtype()
                -- Search forward and backward
                if type == '/' or type == '?' then return { 'buffer' } end
                -- Commands
                if type == ':' or type == '@' then return { 'cmdline' } end
                return {}
            end,
        },
    },
    opts_extend = { "sources.default" }
}
