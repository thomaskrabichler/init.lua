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
      "png",
      "svg",
      "env",
      "%.g%.dart$",           -- Ignore .g.dart files (generated files)
      "%.freezed%.dart$",     -- Ignore .freezed.dart files
      "%.gen%.dart$",     -- Ignore .freezed.dart files
      "%.gr%.dart$",          -- Ignore .gr.dart files (go_router)
      "%.config%.dart$",      -- Ignore .config.dart files
      "%.part%.dart$",        -- Ignore .part.dart files
      "node_modules/",        -- Node modules
      "%.git/",               -- Git folder
      "build/",               -- Build folder
      "%.lock$",              -- Lock files
      "%.log$",               -- Log files
      "%.tmp$",               -- Temp files
      "coverage/",            -- Coverage folder
      ".dart_tool/",          -- Dart tool folder
      "android/",             -- Android folder (optional)
      "ios/",                 -- iOS folder (optional)
      "web/",                 -- Web folder (optional)
      "linux/",               -- Linux folder (optional)
      "macos/",               -- macOS folder (optional)
      "windows/",             -- Windows folder (optional)
    }
  }
}
