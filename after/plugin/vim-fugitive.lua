local ns = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>d", ":Gdiffsplit<cr>", ns)
vim.keymap.set("n", "<leader>gl", ":Git log<cr>", ns)
vim.keymap.set("n", "<leader>ps", ":Git push -u origin<cr>", ns)
