vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--
-- empty setup using defaults
   require("nvim-tree").setup({
                log = {
                        enable = true,
                        truncate = true,
                        types = {
                                diagnostics = true,
                        },
                },

      diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          warning = "",
          error = "",
        },
      },

            })
vim.keymap.set("n","<leader>n",   vim.cmd.NvimTreeToggle)
