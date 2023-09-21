-- Current Theme
vim.o.termguicolors = true
vim.cmd.colorscheme "rose-pine"

-- Custom Catppuccin
require("catppuccin").setup {
  flavour = "mocha",
  color_overrides = {
    all = {
      text = "#ffffff",
    },
    latte = {},
    frappe = {},
    macchiato = {},
    mocha = {
      base = "#111111",
      mantle = "#131313",
      crust = "#151515",
    },
  }
}
