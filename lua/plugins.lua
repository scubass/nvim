-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Simple plugins can be specified as strings
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use { 'xiyaowong/nvim-transparent' }
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use { 'ggandor/lightspeed.nvim' }
  use { 'tpope/vim-repeat'}
  use 'max-0406/autoclose.nvim'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- start screen
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
  --comand-copletition
  use 'smolck/command-completion.nvim'
  -- telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

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

  -- You can specify multiple plugins in a single call
  use {"ellisonleao/carbon-now.nvim", config = function() require('carbon-now').setup() end}


  -- vimwiki
  use { 'vimwiki/vimwiki' }

  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
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
require("nvim-tree").setup()



end)
