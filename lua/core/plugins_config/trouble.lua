require("trouble").next({skip_groups = true, jump = true})
require("trouble").previous({skip_groups = true, jump = true})
require("trouble").first({skip_groups = true, jump = true})
require("trouble").last({skip_groups = true, jump = true})

require("trouble").setup{
  use_diagnostic_signs = true -- enabling this will use the signs defined in your LSP client
}

local signs = {

  -- Error = "",
  -- Warn = "",
  -- Info = "",
  -- Hint = "",

  Error = "",
  Warn = "",
  Info = "",
  Hint = "",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
