require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pyright", "ts_ls", "clangd", "eslint" },
})
