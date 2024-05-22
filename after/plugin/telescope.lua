local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-s>', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.buffers, {})
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "venv",
      "__pycache__",
      "pkl",'ipynb',
      "json",
      "public",
      "node_modules",
      "build", 
      ".git",
      "config",
      "md",
      "env",
    }
  }
}
