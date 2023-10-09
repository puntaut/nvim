local config = function()
    require('rose-pine').setup({
    })
    vim.cmd.colorscheme "rose-pine"
end

return {
    "rose-pine/neovim",
    config = config,
    lazy = false,
    priority = 1000,
}
