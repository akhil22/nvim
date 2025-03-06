local opts = {noremap = true, silent = true}
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga peek_definition<CR>", opts)
