vim.lsp.enable({'dartls'})

vim.diagnostic.config({
    virtual_lines = true,
    -- virtual_text = true,
    underline = true,
   update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})

local function goto_next_error()
  vim.diagnostic.goto_next({
    severity = { min = vim.diagnostic.severity.ERROR }
  })
end

local function goto_prev_error()
  vim.diagnostic.goto_prev({
    severity = { min = vim.diagnostic.severity.ERROR }
  })
end



vim.keymap.set('n', '<C-\'>', goto_next_error, { desc = 'Next Error' })
vim.keymap.set('n', '<C-;>', goto_prev_error, { desc = 'Previous Error' })

-- Enhanced LSP diagnostics configuration (optional - improves error display)
vim.diagnostic.config({
  virtual_text = {
    prefix = '●',
    severity = { min = vim.diagnostic.severity.WARN },
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})

-- LSP diagnostic signs (optional - better error icons)
local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end


vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'Code Action' })
vim.keymap.set('v', '<leader>a', vim.lsp.buf.code_action, { desc = 'Code Action' })

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.enable({'dartls'}, {
  capabilities = capabilities
})
