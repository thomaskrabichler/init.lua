
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
 }
}
use {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
 -- Add this to your packer.lua file
 }
use {
  'akinsho/toggleterm.nvim',
  tag = '*',
  config = function()
    require("toggleterm").setup()
  end
} lazy = false, -- This plugin is already lazy

  use 'github/copilot.vim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'folke/tokyonight.nvim'
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('dart-lang/dart-vim-plugin')
  use {
    'nvim-flutter/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
}
  -- use 'akinsho/flutter-tools.nvim'
  -- use{'neoclide/coc.nvim', branch= 'release'}
  use('terrortylor/nvim-comment')
  use('nvim-lua/plenary.nvim')
  use 'mlaursen/vim-react-snippets'
  use 'neovim/nvim-lspconfig'
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
-- use 'numirias/semshi'
use "aznhe21/actions-preview.nvim"
use 'mattn/emmet-vim'


--cursor
--

  -- Required plugins
  use 'nvim-lua/plenary.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'MeanderingProgrammer/render-markdown.nvim'

  -- Optional dependencies
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
  use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
  use 'HakonHarnes/img-clip.nvim'
  use 'zbirenbaum/copilot.lua'



  -- Required plugins
  use 'nvim-lua/plenary.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'MeanderingProgrammer/render-markdown.nvim'

  -- Optional dependencies
  use 'hrsh7th/nvim-cmp'
  use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
  use 'HakonHarnes/img-clip.nvim'
  use 'zbirenbaum/copilot.lua'
  use 'stevearc/dressing.nvim' -- for enhanced input UI
  use 'folke/snacks.nvim' -- for modern input UI

  -- Diffview for reviewing changes
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Which-key for keybinding hints
  use {
    'folke/which-key.nvim',
    config = function()
      require('which-key').setup {}
    end
  }

  -- Supermaven for AI completion
  use 'supermaven-inc/supermaven-nvim'
end)

