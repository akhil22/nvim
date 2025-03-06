vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.backup = false
local uname = vim.loop.os_uname()
_G.IS_WINDOWS = uname.sysname:find 'Windows' and true or false
if _G.IS_WINDOWS then
    vim.g.undotree_DiffCommand = "FC"
    vim.opt.undodir = os.getenv("USERPROFILE") .. "/.vim/undodir"
else
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
