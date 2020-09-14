" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" airline theme
let g:airline_theme='solarized'
let g:airline_theme_bg='dark'

" python linting/fixing
let g:ale_linters = {'python': ['flake8', 'pydocstyle']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\}
let g:ale_fix_on_save=1

syntax enable

set number relativenumber

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
