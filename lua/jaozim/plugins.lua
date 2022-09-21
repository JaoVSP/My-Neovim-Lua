vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

-- Packer
  use 'wbthomason/packer.nvim'

-- Plenary
use "nvim-lua/plenary.nvim"


-- Theme

use 'folke/tokyonight.nvim'
		
		
--Illuminate
use { "RRethy/vim-illuminate" }
		
		
--Telescope
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

		
--NvimTree
use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require'nvim-tree'.setup {} end
	}



-- Treesitter
use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}


-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

--Icons
   use 'kyazdani42/nvim-web-devicons'

		
-- Identline
  use 'lukas-reineke/indent-blankline.nvim'

		
--Autopairs
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}


--Autotag
use 'windwp/nvim-ts-autotag'


-- CMP
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'


-- snippets
use 'L3MON4D3/LuaSnip'


-- Lsp
use  'neovim/nvim-lspconfig'
use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
}
use 'onsails/lspkind-nvim'
use 'jose-elias-alvarez/null-ls.nvim'

end)
