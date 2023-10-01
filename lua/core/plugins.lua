local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Color Scheme
    {
        -- Current Color Scheme
        "rose-pine/neovim",

        -- Others
        "catppuccin/nvim",
        "shaunsingh/nord.nvim",
        "mhartington/oceanic-next",
        "projekt0n/github-nvim-theme",
        "nyoom-engineering/oxocarbon.nvim",
    },

    -- Syntax
    {
        -- Syntax
        "nvim-treesitter/nvim-treesitter",
        -- TextObjects
        "nvim-treesitter/nvim-treesitter-textobjects",
        "chrisgrieser/nvim-various-textobjs",
        "JoosepAlviste/nvim-ts-context-commentstring",
    },

    -- Editing and Motion
    {
        "smoka7/hop.nvim",
        "numToStr/Comment.nvim",
        "yamatsum/nvim-cursorline",
        "kylechui/nvim-surround",
        "monaqa/dial.nvim",
        "altermo/ultimate-autopair.nvim",
    },

    -- Indentation and Formatting
    {
        "lukas-reineke/indent-blankline.nvim",
    },

    -- Color and Icon
    {
        "HiPhish/rainbow-delimiters.nvim",
        "norcalli/nvim-colorizer.lua",
        "nvim-tree/nvim-web-devicons",
    },

    -- File Explorer and Fuzzy Finder
    {
        -- File Explorer
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        -- Fuzzy Finder
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim",
        },
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },

    -- Statusline, Bufferline and Scrallbar
    {
        -- Statusline
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        -- Bufferline
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    {
        "dstein64/nvim-scrollview",
    },

    -- Language Server Protocal
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
    },
    {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig.nvim",
        {
            "creativenull/efmls-configs-nvim",
            dependencies = { "neovim/nvim-lspconfig" },
        },
        "folke/lsp-colors.nvim",
        -- snippets
        "saadparwaiz1/cmp_luasnip",
        {
            "L3MON4D3/LuaSnip",
            dependencies = { "rafamadriz/friendly-snippets" },
        },
        -- AutoCompletion
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        -- Language
        "neovim/pynvim",
    },
    {
        -- Diagnostics
        {
            "folke/trouble.nvim",
            dependencies = {
                "nvim-tree/nvim-web-devicons",
                "BurntSushi/ripgrep",
            },
        },
        {
            url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        },
    },
    {
        -- Debugger
        "mfussenegger/nvim-dap",
        "rcarriga/nvim-dap-ui",
    },
    {
        -- Terminal
        "akinsho/toggleterm.nvim",
    },
    {
        -- Git
        "lewis6991/gitsigns.nvim",
    },
}

require("lazy").setup(plugins, opt)
