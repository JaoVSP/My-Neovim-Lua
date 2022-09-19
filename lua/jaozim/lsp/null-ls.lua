local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting

local diagnostics = null_ls.builtins.diagnostics


null_ls.setup({
    sources = {
      formatting.prettier.with({ extra_args = { '--single-quote', '--no-trailingComma"' }}),
      formatting.black.with({ extra_args = { '--fast' }}),
      diagnostics.eslint_d,
      diagnostics.flake8,
    },

    
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()")
		end
	end,
})
