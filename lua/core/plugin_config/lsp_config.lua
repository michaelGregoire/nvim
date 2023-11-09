require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "astro", "intelephense", "volar", "tsserver", "jsonls", "html", "emmet_language_server", "yamlls", "marksman" }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}

require("lspconfig").astro.setup {
  on_attach = on_attach
}

require("lspconfig").intelephense.setup {
  on_attach = on_attach
}

require("lspconfig").volar.setup {
  on_attach = on_attach
}

require("lspconfig").tsserver.setup {
  on_attach = on_attach
}

require("lspconfig").jsonls.setup {
  on_attach = on_attach
}

require("lspconfig").html.setup {
  on_attach = on_attach
}

require("lspconfig").emmet_language_server.setup {
  on_attach = on_attach
}

require("lspconfig").yamlls.setup {
  on_attach = on_attach
}


require("lspconfig").marksman.setup {
  on_attach = on_attach
}
