local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting

local diagnostics = null_ls.builtins.diagnostics


null_ls.setup({
    sources = {
      formatting.prettier.with({ extra_args = { '--single-quote', '--no-trailingComma"', '--no-semi' }}),
      formatting.black.with({ extra_args = { '--fast' }}),
      diagnostics.eslint_d,
      diagnostics.flake8,
    },
on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = 0,
        callback = function() vim.lsp.buf.formatting_seq_sync() end
      })
    end
  end,
  
  })
