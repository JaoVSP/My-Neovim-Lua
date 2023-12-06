require("nvim-web-devicons").get_icons()
require("nvim-tree").setup({})
vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>", {})
