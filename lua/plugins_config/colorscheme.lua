local config = function()
    require('rose-pine').setup({
        variant = 'main',
        -- variant = 'dawn',
    })
    vim.cmd.colorscheme "rose-pine"
end

return {
    "rose-pine/neovim",
    config = config,
    lazy = false,
    priority = 1000,
}
