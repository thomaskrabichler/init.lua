-- Flutter keymaps (add these BEFORE the flutter-tools setup)
vim.keymap.set('n', '<leader>fa', '<cmd>FlutterRun<cr>', { desc = 'Flutter Run' })
vim.keymap.set('n', '<leader>fs', '<cmd>FlutterRun flutter run --flavor dev --target lib/main_dev.dart<cr>', { desc = 'Flutter Run Dev' })
vim.keymap.set('n', '<leader>fD', '<cmd>FlutterDevices<cr>', { desc = 'Flutter Devices' })
vim.keymap.set('n', '<leader>fr', '<cmd>FlutterRestart<cr>', { desc = 'Flutter Restart' })
vim.keymap.set('n', '<leader>fd', '<cmd>FlutterOutlineToggle<cr>', { desc = 'Flutter Outline Toggle' })
vim.keymap.set('n', '<leader>fl', '<cmd>FlutterLogToggle<cr>', { desc = 'Flutter Log Toggle' })
vim.keymap.set('n', '<leader>fq', '<cmd>FlutterQuit<cr>', { desc = 'Flutter Quit' })


-- Your existing flutter-tools setup (keep your current settings)
require("flutter-tools").setup {
  decorations = {
    statusline = {
      app_version = false,
      device = false,
    project_config = false,
    }
  },
  debugger = { -- integrate with nvim dap + install dart code debugger
    enabled = false,
    exception_breakpoints = {},
    evaluate_to_string_in_debug_views = true,
  },
    flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
  root_patterns = { ".git", "pubspec.yaml" }, -- patterns to find the root of your flutter project
  fvm = false, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
  default_run_args= nil, -- Default options for run command (i.e `{ flutter = "--no-version-check" }`). Configured separately for `dart run` and `flutter run`.
  widget_guides = {
    enabled = true,
  },
closing_tags = {
  highlight = "MatchParen", -- Change from "ErrorMsg" to "MatchParen"
  prefix = ">", 
  priority = 10,
  enabled = false -- Keep enabled
},
  dev_log = {
    enabled = true,
    filter = nil, -- optional callback to filter the log
    notify_errors = false, -- if there is an error whilst running then notify the user
    open_cmd = "15split", -- command to use to open the log buffer
    focus_on_open = true, -- focus on the newly opened log window
  },
  dev_tools = {
    autostart = false, -- autostart devtools server if not detected
    auto_open_browser = false, -- Automatically opens devtools in the browser
  },
  outline = {
    -- open_cmd = "50vnew", -- command to use to open the outline buffer
open_cmd = "botright 80vnew",
    auto_open = false -- if true this will open the outline automatically when it is first populated
  },
  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = false, -- highlight the background
      background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
      foreground = false, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
      virtual_text_str = "■", -- the virtual text character to highlight
    },
    on_attach = my_custom_on_attach,
    capabilities = my_custom_capabilities, -- e.g. lsp_status capabilities
    --- OR you can specify a function to deactivate or change or control how the config is created
    capabilities = function(config)
      config.specificThingIDontWant = false
      return config
    end,
    -- see the link below for details on each option:
    -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
      updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
    }
  }
}

local Terminal = require('toggleterm.terminal').Terminal

local derry_build = Terminal:new({
  cmd = "derry build",
  dir = vim.fn.getcwd(),
  direction = "horizontal",
  size = 15,
  close_on_exit = false,
  start_in_insert = false,
})

-- Derry watch terminal
local derry_watch = Terminal:new({
  cmd = "derry watch",
  dir = vim.fn.getcwd(),
  direction = "horizontal",
  size = 15,
  close_on_exit = false,
  start_in_insert = false,
})

-- Derry locale terminal
local derry_locale = Terminal:new({
  cmd = "derry locale",
  dir = vim.fn.getcwd(),
  direction = "horizontal",
  size = 15,
  close_on_exit = false,
  start_in_insert = false,
})

local derry_dev = Terminal:new({
  cmd = "derry dev",
  dir = vim.fn.getcwd(),
  direction = "horizontal",
  size = 15,
  close_on_exit = true,
  start_in_insert = false,
})

-- Terminal toggle functions
function _derry_build_toggle()
  derry_build:toggle()
end

function _derry_watch_toggle()
  derry_watch:toggle()
end

function _derry_locale_toggle()
  derry_locale:toggle()
end

function _derry_dev_toggle()
  derry_dev:toggle()
end

vim.keymap.set('n', '<leader>dB', '<cmd>lua _derry_build_toggle()<cr>', { desc = 'Derry Build Terminal' })
vim.keymap.set('n', '<leader>dW', '<cmd>lua _derry_watch_toggle()<cr>', { desc = 'Derry Watch Terminal' })
vim.keymap.set('n', '<leader>dL', '<cmd>lua _derry_locale_toggle()<cr>', { desc = 'Derry Locale Terminal' })

-- Quick commands (run in background)
vim.keymap.set('n', '<leader>db', '<cmd>!derry build<cr>', { desc = 'Derry Build (Quick)' })
vim.keymap.set('n', '<leader>dw', '<cmd>!derry watch<cr>', { desc = 'Derry Watch (Quick)' })
vim.keymap.set('n', '<leader>dl', '<cmd>!derry locale<cr>', { desc = 'Derry Locale (Quick)' })
vim.keymap.set('n', '<leader>dd', '<cmd>!derry dev<cr>', { desc = 'Derry Dev (Quick)' })
