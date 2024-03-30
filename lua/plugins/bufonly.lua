return {
  "numToStr/BufOnly.nvim",
  config = function()
    vim.keymap.set("n", "<leader>co", ":BufOnly<CR>", {})
  end
}
