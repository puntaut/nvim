local HEIGHT_RATIO = 0.7 -- You can change this
local WIDTH_RATIO = 0.45 -- You can change this too
local config = function()
    local function on_attach(bufnr)
        local api = require('nvim-tree.api')
        local function opts(desc)
            return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        api.config.mappings.default_on_attach(bufnr)

        -- vim.keymap.del('n', 'o', { buffer = bufnr })
        -- vim.keymap.del('n', 'e', { buffer = bufnr })
        -- vim.keymap.del('n', 'E', { buffer = bufnr })
        -- vim.keymap.del('n', 'I', { buffer = bufnr })
        -- vim.keymap.del('n', 'd', { buffer = bufnr })
        -- vim.keymap.del('n', 'a', { buffer = bufnr })
        -- vim.keymap.set('n', 'k', api.fs.remove, { buffer = bufnr })
        -- vim.keymap.set('n', 'n', api.fs.create, { buffer = bufnr })
        -- vim.keymap.set('n', 'l', api.node.navigate.parent_close, { buffer = bufnr })
        -- vim.keymap.set('n', 'h', api.tree.change_root_to_node, { buffer = bufnr })
        -- vim.keymap.set('n', '<esc>', api.tree.close, { buffer = bufnr })

        vim.keymap.del('n', '<C-]>', opts('CD'))
        vim.keymap.del('n', '<C-e>', opts('Open: In Place'))
        vim.keymap.del('n', '<C-k>', opts('Info'))
        vim.keymap.del('n', '<C-r>', opts('Rename: Omit Filename'))
        vim.keymap.del('n', '<C-t>', opts('Open: New Tab'))
        vim.keymap.del('n', '<C-v>', opts('Open: Vertical Split'))
        vim.keymap.del('n', '<C-x>', opts('Open: Horizontal Split'))
        vim.keymap.del('n', '<BS>', opts('Close Directory'))
        vim.keymap.del('n', '<CR>', opts('Open'))
        vim.keymap.del('n', '<Tab>', opts('Open Preview'))
        vim.keymap.del('n', '>', opts('Next Sibling'))
        vim.keymap.del('n', '<', opts('Previous Sibling'))
        vim.keymap.del('n', '.', opts('Run Command'))
        vim.keymap.del('n', '-', opts('Up'))
        vim.keymap.del('n', 'a', opts('Create File Or Directory'))
        vim.keymap.del('n', 'bd', opts('Delete Bookmarked'))
        vim.keymap.del('n', 'bt', opts('Trash Bookmarked'))
        vim.keymap.del('n', 'bmv', opts('Move Bookmarked'))
        vim.keymap.del('n', 'B', opts('Toggle Filter: No Buffer'))
        vim.keymap.del('n', 'c', opts('Copy'))
        vim.keymap.del('n', 'C', opts('Toggle Filter: Git Clean'))
        vim.keymap.del('n', '[c', opts('Prev Git'))
        vim.keymap.del('n', ']c', opts('Next Git'))
        vim.keymap.del('n', 'd', opts('Delete'))
        vim.keymap.del('n', 'D', opts('Trash'))
        vim.keymap.del('n', 'E', opts('Expand All'))
        vim.keymap.del('n', 'e', opts('Rename: Basename'))
        vim.keymap.del('n', ']e', opts('Next Diagnostic'))
        vim.keymap.del('n', '[e', opts('Prev Diagnostic'))
        vim.keymap.del('n', 'F', opts('Live Filter: Clear'))
        vim.keymap.del('n', 'f', opts('Live Filter: Start'))
        vim.keymap.del('n', 'g?', opts('Help'))
        vim.keymap.del('n', 'gy', opts('Copy Absolute Path'))
        vim.keymap.del('n', 'H', opts('Toggle Filter: Dotfiles'))
        vim.keymap.del('n', 'I', opts('Toggle Filter: Git Ignore'))
        vim.keymap.del('n', 'J', opts('Last Sibling'))
        vim.keymap.del('n', 'K', opts('First Sibling'))
        vim.keymap.del('n', 'L', opts('Toggle Group Empty'))
        vim.keymap.del('n', 'M', opts('Toggle Filter: No Bookmark'))
        vim.keymap.del('n', 'm', opts('Toggle Bookmark'))
        vim.keymap.del('n', 'o', opts('Open'))
        vim.keymap.del('n', 'O', opts('Open: No Window Picker'))
        vim.keymap.del('n', 'p', opts('Paste'))
        vim.keymap.del('n', 'P', opts('Parent Directory'))
        vim.keymap.del('n', 'q', opts('Close'))
        vim.keymap.del('n', 'r', opts('Rename'))
        vim.keymap.del('n', 'R', opts('Refresh'))
        vim.keymap.del('n', 's', opts('Run System'))
        vim.keymap.del('n', 'S', opts('Search'))
        vim.keymap.del('n', 'u', opts('Rename: Full Path'))
        vim.keymap.del('n', 'U', opts('Toggle Filter: Hidden'))
        vim.keymap.del('n', 'W', opts('Collapse'))
        vim.keymap.del('n', 'x', opts('Cut'))
        vim.keymap.del('n', 'y', opts('Copy Name'))
        vim.keymap.del('n', 'Y', opts('Copy Relative Path'))
        vim.keymap.del('n', '<2-LeftMouse>', opts('Open'))
        vim.keymap.del('n', '<2-RightMouse>', opts('CD'))

        vim.keymap.set('n', 't', api.tree.change_root_to_node, opts('CD'))
        -- vim.keymap.set('n', '<C-e>', api.node.open.replace_tree_buffer, opts('Open: In Place'))
        -- vim.keymap.set('n', '<C-k>', api.node.show_info_popup, opts('Info'))
        vim.keymap.set('n', '<C-s>', api.fs.rename_sub, opts('Rename: Omit Filename'))
        -- vim.keymap.set('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
        -- vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
        -- vim.keymap.set('n', '<C-x>', api.node.open.horizontal, opts('Open: Horizontal Split'))
        vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))
        vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
        vim.keymap.set('n', '<S-CR>', api.node.open.preview, opts('Open Preview'))
        -- vim.keymap.set('n', '>', api.node.navigate.sibling.next, opts('Next Sibling'))
        -- vim.keymap.set('n', '<', api.node.navigate.sibling.prev, opts('Previous Sibling'))
        -- vim.keymap.set('n', '.', api.node.run.cmd, opts('Run Command'))
        -- vim.keymap.set('n', '-', api.tree.change_root_to_parent, opts('Up'))
        vim.keymap.set('n', 'h', api.fs.create, opts('Create File Or Directory'))
        -- vim.keymap.set('n', 'bd', api.marks.bulk.delete, opts('Delete Bookmarked'))
        -- vim.keymap.set('n', 'bt', api.marks.bulk.trash, opts('Trash Bookmarked'))
        -- vim.keymap.set('n', 'bmv', api.marks.bulk.move, opts('Move Bookmarked'))
        -- vim.keymap.set('n', 'B', api.tree.toggle_no_buffer_filter, opts('Toggle Filter: No Buffer'))
        vim.keymap.set('n', 'y', api.fs.copy.node, opts('Copy'))
        -- vim.keymap.set('n', 'C', api.tree.toggle_git_clean_filter, opts('Toggle Filter: Git Clean'))
        -- vim.keymap.set('n', '[c', api.node.navigate.git.prev, opts('Prev Git'))
        -- vim.keymap.set('n', ']c', api.node.navigate.git.next, opts('Next Git'))
        vim.keymap.set('n', 'k', api.fs.remove, opts('Delete'))
        vim.keymap.set('n', 'K', api.fs.trash, opts('Trash'))
        -- vim.keymap.set('n', 'E', api.tree.expand_all, opts('Expand All'))
        -- vim.keymap.set('n', 'e', api.fs.rename_basename, opts('Rename: Basename'))
        -- vim.keymap.set('n', ']e', api.node.navigate.diagnostics.next, opts('Next Diagnostic'))
        -- vim.keymap.set('n', '[e', api.node.navigate.diagnostics.prev, opts('Prev Diagnostic'))
        -- vim.keymap.set('n', 'F', api.live_filter.clear, opts('Live Filter: Clear'))
        -- vim.keymap.set('n', 'f', api.live_filter.start, opts('Live Filter: Start'))
        -- vim.keymap.set('n', 'g?', api.tree.toggle_help, opts('Help'))
        -- vim.keymap.set('n', 'gy', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
        -- vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
        -- vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Filter: Git Ignore'))
        -- vim.keymap.set('n', 'J', api.node.navigate.sibling.last, opts('Last Sibling'))
        -- vim.keymap.set('n', 'K', api.node.navigate.sibling.first, opts('First Sibling'))
        -- vim.keymap.set('n', 'L', api.node.open.toggle_group_empty, opts('Toggle Group Empty'))
        -- vim.keymap.set('n', 'M', api.tree.toggle_no_bookmark_filter, opts('Toggle Filter: No Bookmark'))
        -- vim.keymap.set('n', 'm', api.marks.toggle, opts('Toggle Bookmark'))
        vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
        vim.keymap.set('n', 'O', api.node.open.no_window_picker, opts('Open: No Window Picker'))
        vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
        vim.keymap.set('n', 'P', api.node.navigate.parent, opts('Parent Directory'))
        vim.keymap.set('n', 'q', api.tree.close, opts('Close'))
        vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
        vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
        -- vim.keymap.set('n', 's', api.node.run.system, opts('Run System'))
        -- vim.keymap.set('n', 'S', api.tree.search_node, opts('Search'))
        -- vim.keymap.set('n', 'u', api.fs.rename_full, opts('Rename: Full Path'))
        -- vim.keymap.set('n', 'U', api.tree.toggle_custom_filter, opts('Toggle Filter: Hidden'))
        -- vim.keymap.set('n', 'W', api.tree.collapse_all, opts('Collapse'))
        -- vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))
        -- vim.keymap.set('n', 'y', api.fs.copy.filename, opts('Copy Name'))
        -- vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
        vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
        vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
    end

    require("nvim-tree").setup {
        sort_by = "case_sensitive",
        renderer = {
            group_empty = true,
            icons = {
                padding = " ",
                git_placement = 'after',
                modified_placement = 'after',
                glyphs = {
                    folder = {
                        arrow_closed = " ",
                        arrow_open = " ",
                    },
                },
            },
            -- icons = icons,
            -- indent_markers = {
            --     enable = true,
            --     inline_arrows = true,
            --     icons = { corner = '╰' },
            -- },
        },
        on_attach = on_attach, -- Don't Delete!!
        disable_netrw = true,
        hijack_netrw = true,
        sync_root_with_cwd = false,
        actions = {
            change_dir = {
                global = true
            }
        },
        view = {
            -- side = "right",
            cursorline = false,
            relativenumber = false,
            signcolumn = "no",
            float = {
                enable = true,
                open_win_config = function()
                    local screen_w = vim.opt.columns:get()
                    local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                    local window_w = screen_w * WIDTH_RATIO
                    local window_h = screen_h * HEIGHT_RATIO
                    local window_w_int = math.floor(window_w)
                    local window_h_int = math.floor(window_h)
                    local center_x = (screen_w - window_w) / 2
                    local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
                    return {
                        -- border = "rounded",
                        relative = "editor",
                        row = center_y,
                        col = center_x,
                        width = window_w_int,
                        height = window_h_int,
                        -- title = " Nvim-Tree ",
                        -- title_pos = "center",
                    }
                end,
            },
            -- width = function()
            --     return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
            -- end,
        },
    }

    vim.keymap.set('n', '<space>t', '<cmd>NvimTreeFindFileToggle<CR>')
end

return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = config
}
