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
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim

set laststatus=2
set t_Co=256
"set noshowmode

set background=dark
colorscheme jellybeans
"colorscheme xoria256

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

"==== Emmet ====
let g:user_emmet_leader_key='<C-A>'

"=== CTags ====
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

"==== UltiSnips ====
let g:UltinSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
