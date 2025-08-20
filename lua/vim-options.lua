vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("cmake")
vim.opt.termguicolors = true
vim.cmd([[
  autocmd QuitPre * if &buftype == 'terminal' | bdelete! | endif
]])
