vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nyoom-engineering/oxocarbon.nvim'}
  use 'folke/tokyonight.nvim'
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  use('nvim-lua/plenary.nvim')
  use('dart-lang/dart-vim-plugin')
  use('BurntSushi/ripgrep')
  use{'neoclide/coc.nvim', branch= 'release'}
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
use 'navarasu/onedark.nvim'
use('nvim-tree/nvim-web-devicons')
use('ThePrimeagen/vim-be-good')
use('ThePrimeagen/harpoon')
use('hrsh7th/vim-vsnip')
use('junegunn/goyo.vim')
use ("lukas-reineke/indent-blankline.nvim")
--use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
end)
