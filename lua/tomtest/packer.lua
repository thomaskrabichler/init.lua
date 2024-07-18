return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
    use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
use {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  lazy = false, -- This plugin is already lazy
}
  use 'github/copilot.vim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'folke/tokyonight.nvim'
  use('mbbill/undotree')
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  use('tpope/vim-fugitive')
  use('dart-lang/dart-vim-plugin')
  use{'neoclide/coc.nvim', branch= 'release'}
  use('terrortylor/nvim-comment')
  use('nvim-lua/plenary.nvim')
  use 'mlaursen/vim-react-snippets'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
   use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use 'nvim-tree/nvim-web-devicons'
-- use 'L3MON4D3/LuaSnip' 
use('ThePrimeagen/harpoon')
use 'nvim-treesitter/nvim-treesitter'
use 'windwp/nvim-ts-autotag'
-- use 'barrett-ruth/live-server.nvim'
use 'numirias/semshi'

use "aznhe21/actions-preview.nvim"
use 'mattn/emmet-vim'

end)
