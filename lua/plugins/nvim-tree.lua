return {
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},

		config = function()
			require("nvim-tree").setup({
				-- keymap
				vim.keymap.set("n", "<C-a>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Explorer" }),
			})
		end,
	},
}
