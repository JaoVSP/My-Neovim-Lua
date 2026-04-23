return {
	{
		"nvim-treesitter/nvim-treesitter",
		ensure_installed = {
			"javascript",
			"lua",
			"python",
			"typescript",
			"tsx",
			"java",
			"cpp",
			"c",
			"prisma",
		},
		sync_install = false,

		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	},
}
