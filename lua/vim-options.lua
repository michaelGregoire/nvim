vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set foldmethod=indent")
vim.cmd("set nofoldenable")
vim.cmd("set number")
vim.g.mapleader = " "
vim.keymap.set("n", "<C-b>", ":b#<CR>", {})
