require("nvim-treesitter.configs").setup({
	ensure_installed = { "javascript", "lua", "python", "typescript", "tsx", "rust", "cpp", "c", "prisma" },
	sync_install = false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
