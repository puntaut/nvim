local config = function()
    local lspconfig = require('lspconfig')
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    -- local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig.pyright.setup({ capabilities = capabilities })
    lspconfig.jsonls.setup({ capabilities = capabilities })
    -- lspconfig.superhtml.setup({
    --     capabilities = capabilities
    -- })
    lspconfig.jdtls.setup({
        handlers = {
            ['language/status'] = function(_, result)
                vim.print('***')
            end,
            ['$/progress'] = function(_, result, ctx)
                vim.print('---')
            end,
        },
        capabilities = capabilities
    })
    lspconfig.clangd.setup({
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
        capabilities = capabilities
    })
    lspconfig.lua_ls.setup {
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
    }

    vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
            -- Enable completion triggered by <c-x><c-o>
            vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

            -- Buffer local mappings.
            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local opts = { buffer = ev.buf }
            -- vim.keymap.set("n", "O", vim.lsp.buf.hover, opts)
            -- vim.keymap.set("n", "od", vim.lsp.buf.definition, opts)
            -- vim.keymap.set("n", "oD", vim.lsp.buf.declaration, opts)
            -- vim.keymap.set("n", "ot", vim.lsp.buf.type_definition, opts)
            -- vim.keymap.set("n", "oi", vim.lsp.buf.implementation, opts)
            -- vim.keymap.set("n", "<space>n", vim.diagnostic.goto_next, opts)
            -- vim.keymap.set("n", "<space>N", vim.diagnostic.goto_prev, opts)
            vim.keymap.set("n", "<space>li", vim.lsp.buf.implementation, opts)
            vim.keymap.set("n", "<space>ls", vim.lsp.buf.signature_help, opts)
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
    dependencies = {
        "Saghen/blink.cmp"
    },
    config = config,
}
