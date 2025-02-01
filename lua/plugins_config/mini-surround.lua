return {
    'echasnovski/mini.surround',
    config = {
        custom_surroundings = nil,
        mappings = {
            add = 'gs',      -- Add surrounding in Normal and Visual modes
            delete = 'ds',   -- Delete surrounding
            find = 'sf',     -- Find surrounding (to the right)
            find_left = '',  -- Find surrounding (to the left)
            highlight = '',  -- Highlight surrounding
            replace = 'cs',  -- Replace surrounding
            update_n_lines = '', -- Update `n_lines`

            suffix_last = '', -- Suffix to search with "prev" method
            suffix_next = '', -- Suffix to search with "next" method
        },
        n_lines = 20,
    }
}
