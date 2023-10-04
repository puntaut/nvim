local config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "clangd", "jsonls" },
    })
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Setup language servers.
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")

    -- efmls-configs-nvim
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

    lspconfig.lua_ls.setup({
        settings = {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                },
                diagnostics = {
                    globals = {
                        "vim",
                    },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
                telemetry = {
                    enable = false,
                },
            },
        },
        capabilities = capabilities,
    })
    lspconfig.efm.setup(vim.tbl_extend("force", efmls_config, {
        -- Pass your custom lsp config below like on_attach and capabilities
        --
        -- on_attach = on_attach,
        capabilities = capabilities,
    }))
    lspconfig.pyright.setup({ capabilities = capabilities })
    lspconfig.clangd.setup({ capabilities = capabilities })
    lspconfig.jsonls.setup({ capabilities = capabilities })

    -- CMP
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        window = {},
        mapping = cmp.mapping.preset.insert({
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
            { name = "LuaSnip" },
        }, {
            { name = "buffer" },
        }),
    })

    cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources({
            { name = "git" },
        }, {
            { name = "buffer" },
        }),
    })

    cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" },
        },
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "path" },
        }, {
            { name = "cmdline" },
        }),
    })

    vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
            -- Enable completion triggered by <c-x><c-o>
            vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

            -- Buffer local mappings.
            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local opts = { buffer = ev.buf }
            vim.keymap.set("n", "<space>lD", vim.lsp.buf.declaration, opts)
            vim.keymap.set("n", "<space>ld", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "<space>li", vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', "<space>ls", vim.lsp.buf.signature_help, opts)
            vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
            vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
            vim.keymap.set("n", "<space>wl", function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, opts)
            vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
            vim.keymap.set("n", "<space>lr", vim.lsp.buf.rename, opts)
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            vim.keymap.set("n", "<space>lf", function()
                vim.lsp.buf.format({ async = true })
            end, opts)
        end,
    })
end

return {
    "neovim/nvim-lspconfig",
    config = config,
    dependencies = {
        "rafamadriz/friendly-snippets",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "creativenull/efmls-configs-nvim",
        "folke/lsp-colors.nvim",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
        "hrsh7th/nvim-cmp",
    },
}
