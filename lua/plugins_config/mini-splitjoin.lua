local config = function()
    require('mini.splitjoin').setup({
        mappings = {
            toggle = 'gj',
            split = '',
            join = '',
        },
    })
end

return {
    'echasnovski/mini.splitjoin',
    config = config,
}
