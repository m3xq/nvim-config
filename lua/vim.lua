local set = vim.opt

set.fillchars = {
  vert = '▎',
}
set.number = true
set.autoindent = true
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.smartcase = true
set.ignorecase = true
set.background = "dark"
set.encoding = "UTF-8"
set.mouse = "a"
set.updatetime = 300
set.hidden = true

vim.cmd [[
  set nocompatible 
  filetype plugin indent on
  filetype on
  filetype indent on
  syntax on
  set termguicolors
  colorscheme everforest

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction
  inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
]]

vim.api.nvim_command([[
  autocmd FileType go nmap <leader>r  <Plug>(go-run)
  autocmd FileType go nmap <leader>t  <Plug>(go-test)
  autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
]])
