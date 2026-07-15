local config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    -- Python
    vim.lsp.config("basedpyright", {
        capabilities = capabilities,
    })
    vim.lsp.enable("basedpyright")

    vim.lsp.config("ruff", {
        capabilities = capabilities,
    })
    vim.lsp.enable("ruff")

    -- JSON
    vim.lsp.config("jsonls", {
        capabilities = capabilities,
    })
    vim.lsp.enable("jsonls")

    -- Java
    vim.lsp.config("jdtls", {
        capabilities = capabilities,
        handlers = {
            ["language/status"] = function() end,
            ["$/progress"] = function() end,
        },
    })
    vim.lsp.enable("jdtls")

    -- C/C++
    vim.lsp.config("clangd", {
        capabilities = capabilities,
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    })
    vim.lsp.enable("clangd")

    -- SystemVerilog
    vim.lsp.config("svls", {
        capabilities = capabilities,
        filetypes = { "verilog", "systemverilog" },
    })
    vim.lsp.enable("svls")

    -- Lua
    vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                },
                diagnostics = {
                    globals = { "vim" },
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
    })
    vim.lsp.enable("lua_ls")

    vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
            vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

            local opts = { buffer = ev.buf }

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
        "Saghen/blink.cmp",
    },
    config = config,
}
