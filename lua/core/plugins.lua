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
    'rose-pine/neovim',

    -- Others
    'catppuccin/nvim',
    'sts10/vim-pink-moon',
    'cocopon/iceberg.vim',
    'shaunsingh/nord.nvim',
    'w0ng/vim-hybrid',
    'joshdick/onedark.vim',
    'mhartington/oceanic-next',
    'projekt0n/github-nvim-theme',
    'nikolvs/vim-sunbather',
    'nyoom-engineering/oxocarbon.nvim'
  },

  -- Syntax
  {
    -- Syntax
    'nvim-treesitter/nvim-treesitter',
    -- TextObjects
    'nvim-treesitter/nvim-treesitter-textobjects',
    'chrisgrieser/nvim-various-textobjs',
    'gaving/vim-textobj-argument',
  },

  -- Editing and Motion
  {
    'tpope/vim-repeat',
    'numToStr/Comment.nvim',
    'yamatsum/nvim-cursorline',
    'kylechui/nvim-surround',
    'fedepujol/move.nvim',
    'monaqa/dial.nvim',
    'mg979/vim-visual-multi',
  },

  -- Indentation and Formatting
  {
    'lukas-reineke/indent-blankline.nvim',
    'cappyzawa/trim.nvim',
  },

  -- Color and Icon
  {
    'HiPhish/nvim-ts-rainbow2',
    'norcalli/nvim-colorizer.lua',
    'nvim-tree/nvim-web-devicons',
  },

  -- File Explorer and Fuzzy Finder
  {
    -- File Explorer
    'nvim-tree/nvim-tree.lua',
    dependencies = {
    "nvim-tree/nvim-web-devicons",
    },
  },
  {
    -- Fuzzy Finder
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },

  -- ZenMode
  {
    'folke/zen-mode.nvim',
  },

  -- Statusline and Bufferline
  {
    -- Statusline
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    -- Bufferline
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- Language Server Protocal
  {
    'williamboman/mason.nvim',
    build = ":MasonUpdate"
  },
  {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    'jose-elias-alvarez/null-ls.nvim',
    'folke/lsp-colors.nvim',
    -- snippets
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
    -- AutoCompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    -- Language
    'neovim/pynvim',
  },
  {
    -- Diagnostics
    {
      'folke/trouble.nvim',
      dependencies = {
        'nvim-tree/nvim-web-devicons',
        'BurntSushi/ripgrep',
      },
    },
    {
      url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
    },
  },
  {
    -- Debugger
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
  },
  {
    -- Terminal
    'akinsho/toggleterm.nvim',
  },
  {
    -- Git
    'lewis6991/gitsigns.nvim',
  },
  {
    -- Start-Up Time
    'dstein64/vim-startuptime',
  },
}

require("lazy").setup(plugins, opt)
