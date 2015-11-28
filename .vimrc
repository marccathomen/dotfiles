"http://dougblack.io/words/a-good-vimrc.html

runtime! plugin/sensible.vim

execute pathogen#infect()
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" " $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

let mapleader = "\<Space>"  " set the mapleader to Space
nnoremap <Leader>o :CtrlP<CR>   " open CtrlP
nnoremap <Leader>w :w<CR>   " save a file

" open ag.vim
nnoremap <leader>a :Ag

set runtimepath^=~/.vim/bundle/ctrlp.vim
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"let g:user_emmet_expandabbr_key = '<C-Right>'
