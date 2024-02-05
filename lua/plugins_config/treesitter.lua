local config = function()
    require('nvim-treesitter.configs').setup {
        auto_install = true,
        ensure_installed = { "c", "lua", "vim", "python", "json", "json5", "bash" },
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
end

return {
    -- Syntax
    "nvim-treesitter/nvim-treesitter",
    config = config,
    -- TextObjects
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        "chrisgrieser/nvim-various-textobjs",
    }
}
