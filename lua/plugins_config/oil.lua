local config = function()
    require("oil").setup({
        win_options = {
            signcolumn = "yes"
        },
        columns = {
            "icon",
            -- "permissions",
            -- "size",
            -- "mtime",
        },
        view_options = {
            show_hidden = true
        }
    })
    vim.keymap.set("n", "<C-f>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
end

return {
    "stevearc/oil.nvim",
    config = config
}
