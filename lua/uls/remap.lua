vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<leader>u", vim.cmd.UndotreeToggle)

--various movements but stay in the center 
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<C-i>", "<C-i>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv") 
vim.keymap.set("n", "N", "Nzzzv") 

--move things in highlighted mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--preserving prevosly copied text if we paste over something
vim.keymap.set("x", "<leader>p", "\"_dP")

--line append but cursor remain in the same place
vim.keymap.set("n", "J", "mzJ`z")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "Q", "<nop>")

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") 
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") 
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") 
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") 
vim.keymap.set("n", "Q", "<nop>")
-- good search and make exec
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.o.scrolloff = 10
vim.o.wrap = false
