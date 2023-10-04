local config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
end

return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = config,
    },
    { "williamboman/mason-lspconfig.nvim", }
}
