local config = function()
    require('nvim-treesitter.configs').setup {
        auto_install = true,
        ensure_installed = { "c", "lua", "vim", "python", "json", "json5", "bash" },
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["if"] = "@function.inner",
                    ["af"] = "@function.outer",
                    ["ia"] = "@parameter.inner",
                    ["aa"] = "@parameter.outer",
                },
                -- selection_modes = {
                --     ['@parameter.outer'] = 'v', -- charwise
                --     ['@function.outer'] = 'V', -- linewise
                --     ['@class.outer'] = '<c-v>', -- blockwise
                -- },
                include_surrounding_whitespace = false,
            },
            move = {
                enable = true,
                set_jump = true,
                goto_next_start = {
                    ["]a"] = "@parameter.inner",
                },
                goto_previous_start = {
                    ["[a"] = "@parameter.inner",
                },
                goto_next_end = {
                    ["]A"] = "@parameter.inner",
                },
                goto_previous_end = {
                    ["[A"] = "@parameter.inner",
                },
            },
        },
        incremental_selection = {
            enable = false,
            keymaps = {
                node_incremental = "v",
                node_decremental = "V",
                init_selection = false, -- set to `false` to disable one of the mappings
                scope_incremental = false,
            },
        },
        sync_install = false,
        ignore_install = {},
        modules = {},
        highlight = {
            enable = true,
        },
        indent = {
            enable = false,
            use_languagetree = true,
        },
    }
    -- local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"

    -- -- Repeat movement with ; and ,
    -- -- ensure ; goes forward and , goes backward regardless of the last direction
    -- vim.keymap.set({ "n", "x", "o" }, "'", ts_repeat_move.repeat_last_move_next)
    -- vim.keymap.set({ "n", "x", "o" }, '"', ts_repeat_move.repeat_last_move_previous)
end

return {
    {
        -- Syntax
        "nvim-treesitter/nvim-treesitter",
        config = config,
    },
    {
        -- TextObjects
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "backdround/improved-ft.nvim", -- THIS IS FOR using repeated move purpose
        },
    },
}
