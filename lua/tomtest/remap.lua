local opts = {silent = True}
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv",vim.cmd.Ex) 
vim.keymap.set("n", "<leader>qq",vim.cmd.bd, opts)
vim.keymap.set("n", "<leader>s",vim.cmd.w)

vim.keymap.set("n", "<leader>=",":vert res +8<CR>", opts)
vim.keymap.set("n", "<leader>-",":vert res -8<CR>", opts)

vim.keymap.set("n", "<leader>k",":wincmd k<CR>", opts)
vim.keymap.set("n", "<leader>i",":wincmd j<CR>", opts)
vim.keymap.set("n", "<leader>h",":wincmd h<CR>", opts)
vim.keymap.set("n", "<leader>l",":wincmd l<CR>", opts)

vim.keymap.set("v","K", ":m '<-2<CR>gv=gv") 
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])




