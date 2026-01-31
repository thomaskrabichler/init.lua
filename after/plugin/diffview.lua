local ok, diffview = pcall(require, 'diffview')
if not ok then return end

diffview.setup({
  use_icons = true,
  view = {
    merge_tool = {
      layout = "diff3_mixed",
    },
  },
})

vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>', { desc = 'Diffview Open' })
vim.keymap.set('n', '<leader>gc', '<cmd>DiffviewClose<cr>', { desc = 'Diffview Close' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', { desc = 'File History' })
vim.keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory<cr>', { desc = 'Branch History' })
