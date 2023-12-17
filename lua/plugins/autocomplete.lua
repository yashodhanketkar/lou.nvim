return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      vim.cmd("inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : '<Tab>'")
      -- vim.cmd(":CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright coc-tailwindcss")
    end
  },
  {
    "tpope/vim-commentary",
  },
}
