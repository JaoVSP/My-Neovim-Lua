local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.buffers, {})
vim.keymap.set("n", "<C-l>", builtin.current_buffer_fuzzy_find, {})
