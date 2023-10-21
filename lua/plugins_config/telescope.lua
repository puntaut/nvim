local config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')

    telescope.setup {
        defaults = {
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
            },
            path_display = {
                shorten = 4,
                shorten_exclude = { 'start' },
                truncate = 4,
                use_ellipsis = true
            },
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
            undo = {
                use_delta = true,
                use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
                side_by_side = false,
                diff_context_lines = vim.o.scrolloff,
                entry_format = "state #$ID, $STAT, $TIME",
                time_format = "",
                mappings = {
                    i = {
                        ["<cr>"] = require("telescope-undo.actions").yank_additions,
                        ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
                        ["<C-cr>"] = require("telescope-undo.actions").restore,
                    },
                },
            },
        }
    }
    telescope.load_extension("undo")

    vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})
    vim.keymap.set('n', '<leader>rs', builtin.resume, {})
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fp', builtin.oldfiles, {})
    vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
    vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
    vim.keymap.set('n', '<leader><CR>', builtin.lsp_definitions, {})
    vim.keymap.set("n", "<leader>u", telescope.extensions.undo.undo, {})
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
end

return {
    -- Fuzzy Finder
    "nvim-telescope/telescope.nvim",
    config = config,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "debugloop/telescope-undo.nvim",
    },
}
