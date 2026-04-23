return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("pyright")
			vim.lsp.enable("vtsls")
			vim.lsp.enable("eslint")
			vim.lsp.enable("clangd")
			vim.lsp.enable("rust_analyzer")
		end,
	},
}
