local ok, supermaven = pcall(require, 'supermaven-nvim')
if not ok then return end

supermaven.setup({
  keymaps = {
    accept_suggestion = "<Tab>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-j>",
  },
  ignore_filetypes = { cpp = true },
  color = {
    suggestion_color = "#ffffff",
    cterm = 244,
  },
  log_level = "info",
  disable_inline_completion = false,
  disable_keymaps = false,
})
