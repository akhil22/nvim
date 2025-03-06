vim.g.mapleader = " "
local is_windows = vim.fn.has("win32") or vim.fn.has("win64") or vim.fn.has("win16")
if is_windows then
    vim.g.undotree_DiffCommand = "FC"
end
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<C-i>", "<C-i>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.o.scrolloff = 10
vim.o.wrap = false
