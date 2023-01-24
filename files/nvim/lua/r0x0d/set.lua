-- VIM settings
vim.opt.laststatus = 1
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tw = 79
vim.opt.cc = "80"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.ttyfast = true
vim.opt.guicursor = ""
vim.opt.mouse = "a"
vim.opt.smartindent = true
vim.opt.errorbells = false
vim.opt.wrap = false

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.filetype = "on"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
