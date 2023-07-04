local augend = require("dial.augend")
require("dial.config").augends:register_group{
  default = {
    augend.integer.alias.decimal_int,
    augend.integer.alias.hex,
    augend.integer.alias.binary,
    augend.date.alias["%Y/%m/%d"],
    augend.date.alias["%H:%M"],
    augend.constant.alias.bool,
    augend.constant.alias.alpha,
    augend.constant.alias.Alpha,
    augend.constant.new{
      elements = {"&&", "||"},
      word = false,
      cyclic = true,
    },
  },
  mygroup = {
  },
}

-- change augends in VISUAL mode
vim.keymap.set("v", ")", require("dial.map").inc_visual(), {noremap = true})
vim.keymap.set("v", "(", require("dial.map").dec_visual(), {noremap = true})

-- change augends in NORMAL mode
vim.keymap.set("n", ")", require("dial.map").inc_normal(), {noremap = true})
vim.keymap.set("n", "(", require("dial.map").dec_normal(), {noremap = true})
