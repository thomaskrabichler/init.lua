local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged }, -- Auto-completion as you type
    completeopt = 'menu,menuone,noselect',
  },
  
  experimental = {
    ghost_text = true, -- Shows preview
  },
  
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  
  mapping = cmp.mapping.preset.insert({
    -- Ctrl+E to manually trigger completion (even when auto is working)
    ['<C-e>'] = cmp.mapping.complete(),
    
    -- Ctrl+C to close menu if you want to dismiss it
    ['<C-c>'] = cmp.mapping.abort(),
    
    ['<CR>'] = cmp.mapping.confirm({ 
      behavior = cmp.ConfirmBehavior.Replace,
      select = true 
    }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  
  sources = cmp.config.sources({
    { name = 'nvim_lsp', priority = 1000 },
    { name = 'luasnip', priority = 750 },
  }, {
    { name = 'buffer', priority = 500 },
    { name = 'path', priority = 250 },
  }),
  
  formatting = {
    format = function(entry, vim_item)
      local kind_icons = {
        Text = "",
        Method = "",
        Function = "",
        Constructor = "",
        Field = "",
        Variable = "",
        Class = "ﴯ",
        Interface = "",
        Module = "",
        Property = "ﰠ",
        Unit = "",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Event = "",
        Operator = "",
        TypeParameter = ""
      }
      
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind] or "", vim_item.kind)
      vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
        path = "[Path]",
      })[entry.source.name]
      
      return vim_item
    end
  },
})
