local config = function()
    -- require("telescope").setup {
    --     extensions = {
    --         file_browser = {
    --             theme = "ivy",
    --             -- disables netrw and use telescope-file-browser in its place
    --             hijack_netrw = true,
    --             mappings = {
    --                 ["i"] = {
    --                     -- your custom insert mode mappings
    --                 },
    --                 ["n"] = {
    --                     -- your custom normal mode mappings
    --                 },
    --             },
    --         },
    --     },
    -- }
    -- -- To get telescope-file-browser loaded and working with telescope,
    -- -- you need to call load_extension, somewhere after setup function:
    -- require("telescope").load_extension "file_browser"
end

return {
    "nvim-telescope/telescope-file-browser.nvim",
    config = config,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}
