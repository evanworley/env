call pathogen#infect()


set t_Co=256
let g:molokai_original = 1
colorscheme molokai


syntax enable

filetype plugin on
filetype indent on
set nocompatible

set laststatus=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set so=20
set ic

set nosplitbelow
set splitright
set diffopt=filler,vertical

set incsearch
set hlsearch
set showmatch

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set list
set listchars=trail:·

"specialized leader key
let mapleader=","

" Experimental copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_use_caching = 0

" Tab navigation like a web browser
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

"removes highlighting from search after space
:noremap <silent> <Space> :silent noh<Bar>echo<CR>

" File types
au BufNewFile,BufRead *.log set filetype=messages

" Find matching tags
runtime macros/matchit.vim

" Fugitive
nnoremap <leader>d :Gdiff master<CR>

"let b:match_words = '\<\%(if\|unless\|case\|while\|until\|for\|do\|class\|module\|def\|begin\)\>=\@!:\<\%(else\|elsif\|ensure\|when\|rescue\|break\|redo\|next\|retry\)\>:\<end\>,{:},\[:\],(:),<:>,<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
