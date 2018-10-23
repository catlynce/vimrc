"===== Pathogen Call =======
execute pathogen#infect()
syntax on
filetype plugin indent on

set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set nowrap
set relativenumber

set showcmd
set wildmenu
set lazyredraw
set showmatch

"set ruler
set list
set listchars=tab:>-,trail:-,eol:¬,precedes:←,extends:»

set enc=utf-8
set history=1000
set undolevels=1000
set cursorline "highlight the current line
set hlsearch
set incsearch
set title
set nobackup
set noswapfile

"====== SET THE POWERLINE INSTALLATION DIRECTORY =====
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim

set laststatus=2
set t_Co=256
"set noshowmode

set background=dark
colorscheme jellybeans
"colorscheme xoria256
hi CursorLine cterm=NONE ctermbg=238 ctermfg=white

"let g:solarized_termcolors=256
"colorscheme solarized

"===== Map the : to ; =====
nnoremap , :

"===== tab navigation =====
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>

"===== Custom Mappings =====
let mapleader=","
map <C-n> :NERDTreeToggle<CR>
nnoremap <F5> :GundoToggle<CR>

nmap <leader><leader>q :q<cr>
nmap <leader>qa :qa<cr>
nmap <leader>w :w<cr>

"===== comments ============
nmap <leader>c <C-_><C-_>
map <leader>b <C-_>b

"===== window navigation ===
nmap <down> <Nop>
nmap <up> <Nop>
nmap <left> <Nop>
nmap <right> <Nop>

"===== Quick pairs =====
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

"==== YouCompleteMe ====
let g:ycm_key_list_select_completion=['<c-j>']
let g:ycm_key_list_previous_completion=['<c-k>']
let g:ycm_server_python_interpreter='/usr/bin/python2.7'


"==== UltiSnips ====
" let g:UltinSnipsExpandTrigger="<c-l>"
"let g:UltinSnipsExpandTrigger="<c-tab>"
let g:UltinSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"==== Emmet ====
let g:user_emmet_leader_key='<C-A>'

"=== CTags ====
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

"==== ctrlp ====
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:8'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_new_file = 't'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }


"==== indentLine ====
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
"let g:indentLine_setConceal = 0


"==== Laravel Specific ====
nmap <leader>lr <C-t>:e routes/web.php<cr>
nmap <leader>lc <C-t>:e app/Http/Controllers/<cr>
nmap <leader>lm <C-t>:e app/Models<cr>
nmap <leader>lv <C-t>:e resources/views/<cr>
nmap <leader><leader>lc :! php artisan make:controller
nmap <leader><leader>lm :! php artisan make:model
nmap <leader><leader>lv :! php artisan make:view

"==== Javascript Libraries Syntax ====
let g:used_javascript_libs = 'jquery,vue'

"==== php namespace ====
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <leader>u :call PhpInsertUse()<CR>

