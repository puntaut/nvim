require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust", "ruby", "vim", "python", "json", "json5", "sql" },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["lf"] = "@function.outer",
                ["hf"] = "@function.inner",
                ["hl"] = "@parameter.inner",
                ["ll"] = "@parameter.outer",
            },
            selection_modes = {
                ['@parameter.outer'] = 'v', -- charwise
                ['@function.outer'] = 'V', -- linewise
                ['@class.outer'] = '<c-v>', -- blockwise
            },
            include_surrounding_whitespace = true,
        },
    },
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    modules = {},
    highlight = {
        enable = true,
    },
    indent = {
        enable = false,
        use_languagetree = true,
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    rainbow = {
        enable = true,
        query = 'rainbow-parens',
        strategy = require('ts-rainbow').strategy.global,
        hlgroups = {
            'TSRainbowViolet',
            'TSRainbowBlue',
            'TSRainbowGreen',
            'TSRainbowCyan',
            'TSRainbowYellow',
            'TSRainbowOrange',
            'TSRainbowRed'
        },
    }
}
