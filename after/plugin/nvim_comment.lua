require('nvim_comment').setup()


vim.api.nvim_set_keymap('n', '<C-c>', ':CommentToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', ':CommentToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>:CommentToggle<CR>', { noremap = true, silent = true })
