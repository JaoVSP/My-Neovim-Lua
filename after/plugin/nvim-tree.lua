local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }
local cmd = vim.cmd

require("nvim-tree").setup()

set("n", "<C-a>", ":NvimTreeToggle<CR>", ns)
