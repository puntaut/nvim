local config = function()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group {
        default = {
            augend.integer.alias.hex,
            augend.integer.alias.binary,
            augend.date.alias["%Y/%m/%d"],
            augend.date.alias["%H:%M"],
            augend.constant.alias.bool,
            augend.constant.new {
                elements = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" },
                word = false,
                cyclic = true,
            },
            augend.constant.new {
                elements = {"i", "j", "k"},
                word = false,
                cyclic = true,
            },
            augend.hexcolor.new {
                case = "lower",
            },
            augend.constant.new {
                elements = { "&&", "||" },
                word = false,
                cyclic = true,
            },
            augend.constant.new {
                elements = { "and", "or" },
                word = true,
                cyclic = true,
            },
            augend.constant.new {
                elements = { "True", "False" },
                word = true,
                cyclic = true,
            },
        },
        mygroup = {
        },
    }

    -- change augends in VISUAL mode
    vim.keymap.set("v", "<C-a>", require("dial.map").inc_visual(), { noremap = true })
    vim.keymap.set("v", "<C-x>", require("dial.map").dec_visual(), { noremap = true })
    -- vim.keymap.set("v", "<C-c>", require("dial.map").dec_visual(), { noremap = true })
    -- vim.keymap.set("v", "<C-v>", require("dial.map").inc_visual(), { noremap = true })

    -- change augends in NORMAL mode
    vim.keymap.set("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
    vim.keymap.set("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
    -- vim.keymap.set("n", "<C-c>", require("dial.map").dec_normal(), { noremap = true })
    -- vim.keymap.set("n", "<C-v>", require("dial.map").inc_normal(), { noremap = true })
end

return {
    "monaqa/dial.nvim",
    config = config,
}
