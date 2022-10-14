require('lspconfig')['pyright'].setup{
  cmd = cmd,
  filetypes = { 'python' },  
  on_attach = on_attach, 
}

require('lspconfig')['tsserver'].setup{
  on_attach = on_attach,
  filetypes = {  
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
  },
  
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}

require('lspconfig')['rust_analyzer'].setup{
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },  
  on_attach = on_attach,

  settings = {
    ["rust-analyzer"] = {}
  }
}
