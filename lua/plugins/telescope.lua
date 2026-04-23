return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},

		config = function()
			require("telescope").setup({

				-- keymap
				vim.keymap.set("n", "<C-p>", "<cmd>Telescope buffers<CR>", { desc = "Buffers" }),
				vim.keymap.set(
					"n",
					"<C-l>",
					"<cmd>Telescope current_buffer_fuzzy_find<CR>",
					{ desc = "Current Buffer Fuzzy Find" }
				),
			})
		end,
	},
}
