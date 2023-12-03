require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "astro", "intelephense", "volar", "tsserver", "jsonls", "html", "emmet_language_server", "yamlls", "marksman" }
})

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end


--local capabilities = require('cmp_nvim_lsp').default_capabilities()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      },
    }
  },
}

require("lspconfig").astro.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").volar.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").html.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").emmet_language_server.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('ufo').setup()
