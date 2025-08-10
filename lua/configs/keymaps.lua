local keymap = vim.keymap

-- Delete a word
keymap.set("n", "<A-BS>", "diw")

-- Select all
keymap.set("n", "<leader>a", "<esc>ggVG")
