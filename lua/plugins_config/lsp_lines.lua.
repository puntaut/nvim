local config = function()
    require("lsp_lines").setup()

    vim.diagnostic.config({
        signs = true,
        underline = true,
        update_in_insert = true,
        virtual_text = false,
        virtual_lines = false,
    })

    vim.keymap.set("", "<C-.>", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
end

return {
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = config,
}
