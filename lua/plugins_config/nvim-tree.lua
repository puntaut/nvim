local HEIGHT_RATIO = 0.7 -- You can change this
local WIDTH_RATIO = 0.4  -- You can change this too
local config = function()
    local function on_attach(bufnr)
        local api = require('nvim-tree.api')

        api.config.mappings.default_on_attach(bufnr)

        vim.keymap.del('n', 'o', { buffer = bufnr })
        vim.keymap.del('n', 'e', { buffer = bufnr })
        vim.keymap.del('n', 'E', { buffer = bufnr })
        vim.keymap.del('n', 'I', { buffer = bufnr })
        vim.keymap.del('n', 'd', { buffer = bufnr })
        vim.keymap.del('n', 'a', { buffer = bufnr })
        vim.keymap.set('n', 'k', api.fs.remove, { buffer = bufnr })
        vim.keymap.set('n', 'n', api.fs.create, { buffer = bufnr })
        vim.keymap.set('n', 'l', api.node.navigate.parent_close, { buffer = bufnr })
        vim.keymap.set('n', 'h', api.tree.change_root_to_node, { buffer = bufnr })
        vim.keymap.set('n', '<esc>', api.tree.close, { buffer = bufnr })
    end

    require("nvim-tree").setup {
        sort_by = "case_sensitive",
        renderer = {
            group_empty = true,
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
                        -- title = "Nvim-Tree",
                        -- title_pos = "center",
                    }
                end,
            },
            width = function()
                return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
            end,
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
