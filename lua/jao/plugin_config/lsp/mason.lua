require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pyright", "tsserver", "rust_analyzer", "clangd", "eslint" },
})
