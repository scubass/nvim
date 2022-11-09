-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Simple plugins can be specified as strings

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use { 'ggandor/lightspeed.nvim' }
  use { 'tpope/vim-repeat'}
  -- use 'max-0406/autoclose.nvim'

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- start screen
  -- use {
  --   'goolord/alpha-nvim',
  --   config = function ()
  --       require'alpha'.setup(require'alpha.themes.dashboard'.config)
  --   end
  -- }

  --comand-copletition
  use 'smolck/command-completion.nvim'
  -- telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-telescope/telescope-file-browser.nvim' }

  -- Bufferline
  use "akinsho/bufferline.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "moll/vim-bbye"
  -- using packer.nvim
  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}
  -- Load on a combination of conditions: specific filetypes or commands


  -- init.lua
  use "lukas-reineke/indent-blankline.nvim"


  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use "p00f/nvim-ts-rainbow"

  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }


  -- vimwiki
  use { 'vimwiki/vimwiki' }

  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'L3MON4D3/LuaSnip' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'onsails/lspkind.nvim' }
  use { 'honza/vim-snippets' }
  use { 'rafamadriz/friendly-snippets' }
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use { 'molleweide/luasnip-snippets.nvim'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Colorschemes
  use {'dracula/vim', as = 'dracula'}
  use { "ellisonleao/gruvbox.nvim" }
  use {'shaunsingh/oxocarbon.nvim', run = './install.sh'}
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'whatyouhide/vim-gotham' }
  use { 'EdenEast/nightfox.nvim' }
  use { 'rose-pine/neovim', tag = 'v1.*' }
  use { 'rebelot/kanagawa.nvim' }
  use { 'folke/tokyonight.nvim' }

  use { 'luukvbaal/nnn.nvim' }
  -- Problem with treesitter
  -- use { 'nvim-neorg/neorg', requires = 'nvim-lua/plenary.nvim' }

  use { 'glepnir/dashboard-nvim' }
  use { 'nvim-orgmode/orgmode' }
  use { 'akinsho/org-bullets.nvim' }
  use { 'lukas-reineke/headlines.nvim' }
  use { 'michaelb/sniprun', run = 'bash ./install.sh' }


  -- vim.surround
  use { 'tpope/vim-surround' }

  -- toggle term
  use { 'akinsho/toggleterm.nvim' }

  use { 'ThePrimeagen/vim-be-good' }


  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }

  use { 'lewis6991/impatient.nvim' }
  use { 'stevearc/aerial.nvim' , tag='nvim-0.5'}


end)

