" load plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'regedarek/ZoomWin'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'reedes/vim-textobj-sentence'
Plug 'kana/vim-textobj-user'
Plug 'glts/vim-textobj-comment'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-airline-colornum'
Plug 'python-mode/python-mode'
Plug 'airblade/vim-gitgutter'
Plug 'jamessan/vim-gnupg'
Plug 'tpope/vim-repeat'
Plug 'mbbill/undotree'
Plug 'evannook/matchit'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'pearofducks/ansible-vim'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'tpope/vim-vinegar'
Plug 'hashivim/vim-vagrant'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'rhysd/vim-grammarous'
Plug 'dracula/vim', { 'as': 'dracula' }
" Initialize plugin system
call plug#end()

" install coc extensions
let g:coc_global_extensions = ['coc-css', 'coc-go',  'coc-python', 'coc-git', 'coc-markdownlint', 'coc-pairs' ]

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1):
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" change the mapleader from \ to ,
let mapleader=","

" set theme for airline
let g:airline_theme = "jellybeans"

" don't close preview on switch to other buffer
let g:mkdp_auto_close = 0

filetype on

" automatic reloading of vimrc
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %

" dark background
set bg=dark

" change title of terminal
set title

" define color
colorscheme dracula

" activate systax highlight
syntax on

" show linenumbers
set relativenumber
set number

" show linechanges with $
set cpoptions=$

" show commands in the lower right corner
set showcmd

" show searchterms always after search
set hlsearch

" No highlight after a search
nnoremap <leader><space> :noh<cr>

" insert a blank line with <leader>o and <leader>O
nnoremap <silent> <leader>o o<ESC>
nnoremap <silent> <leader>O O<ESC>

" toggle paste-mode
nnoremap <leader>p :set paste!<cr>

" show matches while searching
set incsearch

" activate filetype plugin and indentation
filetype plugin indent on

" compile latex documents
map <F8> :w!<CR> :!make show<CR><CR>

" set type to mail for mutt-tmp-files
au BufNewFile,BufRead mutt-*-\w\+,mutt\w\{6\},ae\d setf mail
au BufNewFile,BufRead neomutt-*-\w\+,mutt\w\{6\},ae\d setf mail

" always show status line
set laststatus=2

" show matches in menu
set wildmenu

" show special chars
set listchars=tab:>-,trail:_,extends:>,precedes:<
set list

" no startup message and shorten some messages
set shortmess=atI

" use de and en for spellchecking
set spelllang=de_ch
set spellfile=$HOME/.vim/de.add

" check spelling in mails
autocmd FileType mail set spell

" set commandline to two lines height
set cmdheight=1

" settings for tabs
" tabs are two spaces width
set tabstop=2
" number of space chars inserted for indentation
set shiftwidth=2
" space instead of tab
set expandtab

" makes the tab-spaces feel like real tabs
set softtabstop=2
" don't replace tabs in Makefiles
au FileType make setlocal noexpandtab

" special settings for python-files
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 commentstring=#\ %s
let python_highlight_all=1

" allow breaks at special chars and indent breaklines
set breakat="\ \ !@*-+_;:,./?"
set breakindent

" deactivate mouse
set mouse=

" don't cache gpg-passwords with gpg-agent
let g:GPGUseAgent=0

" ignorecase on search except searching uppercase letters
set ignorecase
set smartcase

" disable all folds
set nofoldenable

" disable arrowkeys in all modes
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Quickly get out of insert mode without your fingers having to leave the
" home row (either use 'jj' or 'jk')
inoremap jj <Esc>

" allow simple search and replace
noremap s :s//g<LEFT><LEFT>
noremap S :%s//g<LEFT><LEFT>

" new buffer
nmap <leader>T :enew<CR>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" don't show mode in statusline
set noshowmode

" allow buffers to be hidden
set hidden

" switch between the last two files
nnoremap <leader><leader> <c-^>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" open new splits below and on the right hand side
set splitbelow
set splitright

" add shortcuts for fugitive commands
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Git push<CR>

" persist (g)undo tree between sessions
set undodir=~/.vim/tmp/undo/
set undofile
set history=100
set undolevels=100

" toggle scrollbind
nnoremap <silent> <leader>sb :windo set invscrollbind <CR>

" toggles without fn-keys
nnoremap <leader>1 :UndotreeToggle<CR>

" manage vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>se :vsp $MYVIMRC<CR>

" map co to =o for old unimpaired syntax
nmap co =o

let g:grammarous#languagetool_cmd = 'languagetool'
let g:grammarous#use_vim_spelllang = 1

" always show five lines above and below actual cursor
set scrolloff=5

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" use unsigned and alpha for CTRL-A and CTRL-X too
set nrformats=bin,octal,hex,unsigned,alpha
