" TODO: Move to Vundle
call pathogen#infect()

let g:molokai_original = 1
colorscheme molokai

syntax enable

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
filetype indent on

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

" Copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Tab navigation like a web browser
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" File types
au BufNewFile,BufRead *.log set filetype=messages
