
-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = 'no'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>zz', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})
local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
 -- mapping = cmp.mapping.preset.insert({}),
  mapping = {
    -- Move to next item
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    -- Move to previous item
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    -- Confirm selection
    ['<CR>']  = cmp.mapping.confirm({ select = true }),
    -- Alternative confirm: use <Tab> for expansion or selection:
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    -- If you prefer to expand a snippet or do something else, you can configure more.
  },
})
require('lspconfig').pylsp.setup {
    cmd = { '/home/usl/anaconda3/envs/gpt/bin/pylsp' },
    settings = {
        pylsp = {
            plugins = {
                -- Disable all code style checks (e.g., line length, whitespace)
                pycodestyle = { enabled = false },
                -- Enable pyflakes for variable-based warnings
                pyflakes = { enabled = true },

                -- Optional: disable other plugins you don’t want
                mccabe = { enabled = false },
                pydocstyle = { enabled = false },
                -- ...
            },
        },
    },
    -- cmd = {"T:/lang/Scripts/pylsp.exe"},
    -- other settings...
}
require('lspconfig').clangd.setup({
	cmd = {"clangd-14"},

})
vim.diagnostic.config({
  virtual_text = true,   -- No inline warnings
  underline = false,
  float = { border = "rounded" }  -- Show in floating window on hover
})


