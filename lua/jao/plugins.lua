require("lazy").setup({
	"craftzdog/solarized-osaka.nvim",
	"windwp/nvim-autopairs",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"lewis6991/gitsigns.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"neovim/nvim-lspconfig",
	"onsails/lspkind-nvim",
	"windwp/nvim-ts-autotag",
	"nvim-treesitter/nvim-treesitter",
	"nvim-lualine/lualine.nvim",
	"nvimtools/none-ls.nvim",
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
		},
	},
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
	},
})
