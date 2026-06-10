local config = function()
    local rainbow_delimiters = require('rainbow-delimiters')

    vim.g.rainbow_delimiters = {
        strategy = {
            -- [''] = rainbow_delimiters.strategy['global'],
            -- vim = rainbow_delimiters.strategy['local'],
            
            -- Moved the custom logic here, where it belongs
            json = function(bufnr)
                -- Disabled for very large files, local strategy otherwise
                -- Passing bufnr ensures it checks the correct buffer
                if vim.api.nvim_buf_line_count(bufnr) > 1000 then
                    return nil
                end
                return rainbow_delimiters.strategy['local']
            end
        },
        query = {
            -- [''] = 'rainbow-delimiters',
            -- lua = 'rainbow-blocks',
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

    -- Quick tip if you uncomment these later: the variable is spelled `bufnr`, not `buffnr`
    -- vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    --     callback = function(args)
    --         rainbow_delimiters.disable(args.buf)
    --     end
    -- })
    -- vim.api.nvim_create_autocmd({ "InsertLeavePre" }, {
    --     callback = function(args)
    --         rainbow_delimiters.enable(args.buf)
    --     end
    -- })
end

return {
    "HiPhish/rainbow-delimiters.nvim",
    config = config,
}
