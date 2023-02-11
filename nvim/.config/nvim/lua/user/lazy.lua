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

-- vim.g.mapleader = " "
require("lazy").setup {

  'nvim-lua/plenary.nvim', -- Useful lua functions used by lots of plugins
  'windwp/nvim-autopairs',
  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',
  'kyazdani42/nvim-web-devicons',
  'kyazdani42/nvim-tree.lua',
  'moll/vim-bbye',
  'nvim-lualine/lualine.nvim',
  'akinsho/toggleterm.nvim',
  'ahmedkhalf/project.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'goolord/alpha-nvim',
  'shaunsingh/nord.nvim',

  'hrsh7th/nvim-cmp', -- The completion plugin
  'hrsh7th/cmp-buffer', -- buffer completions
  'hrsh7th/cmp-path', -- path completions
  'saadparwaiz1/cmp_luasnip', -- snippet completions
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',
  'L3MON4D3/LuaSnip', --snippet engine
  'rafamadriz/friendly-snippets', -- a bunch of snippets to use

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig', -- enable LSP
  'jose-elias-alvarez/null-ls.nvim', -- for formatters and linters

  'nvim-telescope/telescope.nvim',
  'nvim-treesitter/nvim-treesitter',
  'lewis6991/gitsigns.nvim',
  -- DAP
  -- 'mfussenegger/nvim-dap',
  -- 'rcarriga/nvim-dap-ui',
  -- 'ravenxrz/DAPInstall.nvim',

  {
    'folke/noice.nvim',
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      },
    config = function()
      require ("user.noice")
    end,
  },

  {
    'debugloop/telescope-undo.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require("telescope").load_extension("undo")
    end,
  },

  {
    "jackMort/ChatGPT.nvim",
      config = function()
        require("chatgpt").setup({
          -- optional configuration
      })
      end,
      dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
      },
  },
  performance = {
      cache = {
        enabled = true,
        -- disable_events = {},
      },
      rtp = {
        disabled_plugins = {
          "gzip",
          "matchit",
          "matchparen",
          "netrwPlugin",
          "rplugin",
          "tarPlugin",
          "tohtml",
          "tutor",
          "zipPlugin",
        },
      },
    },
}
