vim.cmd("set expandtab")
-- vim.cmd("set number")
-- vim.cmd("set relativenumber")
vim.cmd("set number relativenumber")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")
vim.cmd("set autoindent")
vim.cmd("set mouse=a")

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",     -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
vim.cmd.colorscheme "dracula"

-- vim.cmd(":CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright coc-tailwindcss")
vim.cmd("inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : '<Tab>'")
