return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns

					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end

					-- Actions
					map("n", "<C-g>", gs.blame_line)
					map("n", "<Leader><Leader>", gs.preview_hunk)
					map("n", ";=", gs.stage_buffer)
					map("n", ";-", gs.reset_hunk)
				end,
			})
		end,
	},
}
