require("lsp_lines").setup()

vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = false,
  virtual_text = false,
  virtual_lines = false,
})

vim.keymap.set(
  "",
  "<C-.>",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)
