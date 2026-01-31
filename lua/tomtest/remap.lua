
local opts = {silent = True}
vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>n",vim.cmd.Ex) 
vim.keymap.set("n", "<leader>n", ":Rexplore<CR>", opts)
vim.keymap.set("n", "<leader>qq",vim.cmd.bd, opts)
vim.keymap.set("n", "<leader>s",vim.cmd.w)

vim.keymap.set("n", "<leader>\'",":vert res +8<CR>", opts)
vim.keymap.set("n", "<leader>;",":vert res -8<CR>", opts)

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
--vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })

-- Normal mode mappings: <leader>Y -> "+yg_, <leader>y -> "+y, <leader>yy -> "+yy, <leader>b -> "+p
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', '"+p', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ':Format<CR>', { noremap = true, silent = true })



-- lsp
--

-- LSP Keymaps
local function setup_lsp_keymaps(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  
  -- Navigation
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
  
  -- Documentation
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  
  -- Leader key mappings
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>aw', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<leader>ff', function() vim.lsp.buf.format { async = true } end, opts)
  
  -- Diagnostics
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  
  -- Workspace
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
end

-- Auto-attach keymaps when LSP attaches to buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    setup_lsp_keymaps(vim.lsp.get_client_by_id(ev.data.client_id), ev.buf)
  end,
})

