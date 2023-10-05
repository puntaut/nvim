local config = function()
    -- efmls-configs-nvim
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local flake8 = require('efmls-configs.linters.flake8')
    local yapf = require('efmls-configs.formatters.yapf')
    local languages = {
        python = {
            flake8,
            yapf
        },
    }

    local efmls_config = {
        filetypes = vim.tbl_keys(languages),
        settings = {
            rootMarkers = { ".git/" },
            languages = languages,
        },
        init_options = {
            documentFormatting = true,
            documentRangeFormatting = true,
        },
    }

    require('lspconfig').efm.setup(vim.tbl_extend('force', efmls_config, {
        capabilities = capabilities,
    }))
end

return {
    'creativenull/efmls-configs-nvim',
    config = config,
    dependencies = { 'neovim/nvim-lspconfig' },
}
