local config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
end

return {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    config = config,
    dependencies = { "rafamadriz/friendly-snippets" },
}
