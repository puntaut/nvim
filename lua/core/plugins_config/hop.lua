require'hop'.setup{ keys = 'arstdhneiolkpv' }
local hop = require('hop')

-- Hop to Char After_Cursor
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, {remap=true})

-- Hop to Char Before_Cursor
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end, {remap=true})
