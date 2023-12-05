require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "javascript", "css", "typescript", "php", "html", "vim", "ruby", "python" },

  sync_install = false,
  auto_install = true,
  autotag = {
    enable = true,
  },
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { 'python', 'c' }
  }
}
