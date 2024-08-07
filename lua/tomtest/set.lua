--Theme
--vim.cmd[[colorscheme tokyonight]]
--
--vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.autowrite = true
vim.opt.autowriteall = true
vim.opt.relativenumber = true
vim.opt.guifont ="JetBrainsMono NF Medium:h16"

vim.opt.cmdheight=0
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.wrap = false
--
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true
--
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.cursorline = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 11
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "0"
