-- Terminal configuration (create terminal.lua or add to init.lua)
local Terminal = require('toggleterm.terminal').Terminal

-- Flutter logs terminal
local flutter_logs = Terminal:new({
  cmd = "flutter logs",
  dir = vim.fn.getcwd(),
  direction = "horizontal",
  size = 15,
  close_on_exit = false,
  auto_scroll = true,
  start_in_insert = false,
})

-- General terminal
local general_terminal = Terminal:new({
  direction = "horizontal",
  size = 15,
  close_on_exit = false,
  start_in_insert = true,
})

-- Terminal toggle functions
function _flutter_logs_toggle()
  flutter_logs:toggle()
end

function _general_terminal_toggle()
  general_terminal:toggle()
end

-- Terminal keymaps
vim.keymap.set('n', '<leader>tf', '<cmd>lua _flutter_logs_toggle()<cr>', { desc = 'Toggle Flutter Logs' })
vim.keymap.set('n', '<leader>tt', '<cmd>lua _general_terminal_toggle()<cr>', { desc = 'Toggle Terminal' })

-- Additional terminal keymaps for when you're in terminal mode
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { desc = 'Move left from terminal' })
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { desc = 'Move down from terminal' })
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { desc = 'Move up from terminal' })
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { desc = 'Move right from terminal' })

-- ToggleTerm general configuration
require("toggleterm").setup({
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  persist_mode = true,
  direction = 'horizontal',
  close_on_exit = true,
  shell = vim.o.shell,
  auto_scroll = true,
  float_opts = {
    border = 'curved',
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
})
