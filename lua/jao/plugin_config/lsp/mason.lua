require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pyright", "ts_ls", "rust_analyzer", "clangd", "eslint" },
})
