require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust", "ruby", "vim", "python", "json", "json5", "sql" },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["zf"] = "@function.outer",
                ["kf"] = "@function.inner",
                ["zc"] = "@class.outer",
                ["kc"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                ["zs"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
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
        enable = true,
        use_languagetree = true,
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
