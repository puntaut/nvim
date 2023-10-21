local config = function()
    local rainbow_delimiters = require 'rainbow-delimiters'

    vim.g.rainbow_delimiters = {
        strategy = {
            -- [''] = rainbow_delimiters.strategy['global'],
            -- vim = rainbow_delimiters.strategy['local'],
        },
        query = {
            -- [''] = 'rainbow-delimiters',
            -- lua = 'rainbow-blocks',
                    json = function()
            -- Disabled for very large files, global strategy for large files,
            -- local strategy otherwise
            if vim.fn.line('$') > 1000 then
                return nil
            end
            return rainbow_delimiters.strategy['local']
        end
        },
        highlight = {
            'RainbowDelimiterViolet',
            'RainbowDelimiterBlue',
            'RainbowDelimiterCyan',
            'RainbowDelimiterGreen',
            'RainbowDelimiterYellow',
            'RainbowDelimiterOrange',
            'RainbowDelimiterRed',
        },
    }
    -- vim.api.nvim_create_autocmd({ "insertEnter" }, {
    --     callback = function()
    --         rainbow_delimiters.disable(buffnr)
    --     end
    -- })
    -- vim.api.nvim_create_autocmd({ "InsertLeavePre" }, {
    --     callback = function()
    --         rainbow_delimiters.enable(buffnr)
    --     end
    -- })
end

return {
    "HiPhish/rainbow-delimiters.nvim",
    config = config,
}
