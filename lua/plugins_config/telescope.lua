local config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')

    telescope.setup {
        defaults = {
            borderchars = {
                -- "─", "│", "─", "│", "╭", "╮", "╯", "╰"
                " ", " ", " ", " ", " ", " ", " ", " "
            },
            mappings = {
            },
            vimgrep_arguments = {
                "rg",
                "-L",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--fixed-strings",
            },
            -- path_display = {
            --     shorten = 4,
            --     shorten_exclude = { 'start' },
            --     truncate = 4,
            --     use_ellipsis = true
            -- },
            selection_caret = "  ",
            entry_prefix = "  ",
            sorting_strategy = "ascending",
            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    preview_width = 0.55,
                    results_width = 0.8,
                },
                vertical = {
                    mirror = false,
                },
                width = 0.80,
                height = 0.80,
                preview_cutoff = 120,
            },
        },
        pickers = {
        },
        extensions = {
            fzf = {
                fuzzy = false,                  -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true,    -- override the file sorter
                case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
            },
            ["ui-select"] = {
                require("telescope.themes").get_dropdown {
                    -- even more opts
                }

                -- pseudo code / specification for writing custom displays, like the one
                -- for "codeactions"
                -- specific_opts = {
                --   [kind] = {
                --     make_indexed = function(items) -> indexed_items, width,
                --     make_displayer = function(widths) -> displayer
                --     make_display = function(displayer) -> function(e)
                --     make_ordinal = function(e) -> string
                --   },
                --   -- for example to disable the custom builtin "codeactions" display
                --      do the following
                --   codeactions = false,
                -- }
            }
        }
    }
    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")

    vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})
    vim.keymap.set('n', '<leader>rs', builtin.resume, {})
    vim.keymap.set('n', '<leader>tt', builtin.find_files, {})
    vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>tp', builtin.oldfiles, {})
    vim.keymap.set('n', '<leader>tj', builtin.jumplist, {})
    vim.keymap.set('n', '<leader>tk', builtin.keymaps, {})
    vim.keymap.set('n', '<leader>tc', builtin.command_history, {})
    vim.keymap.set('n', '<leader>n', builtin.pickers, {})
    vim.keymap.set('n', '<leader><CR>', builtin.lsp_definitions, {})
    vim.keymap.set('n', '<leader>td', builtin.diagnostics, {})
end

return {
    -- Fuzzy Finder
    "nvim-telescope/telescope.nvim",
    config = config,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
}
