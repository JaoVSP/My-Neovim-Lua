local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }
local cmd = vim.cmd

set("n", "<Leader><Leader>", ":Telescope find_files<CR>", ns)
set("n", "<C-p>", ":Telescope buffers<CR>", ns)
set("n", "<C-/>", ":Telescope current_buffer_fuzzy_find<CR>", ns)
