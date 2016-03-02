" install vundle
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

" load vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

" change the mapleader from \ to ,
let mapleader=","

" set theme for airline
let g:airline_theme = "wombat"

" load plugins
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'regedarek/ZoomWin'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'reedes/vim-textobj-sentence'
Plugin 'kana/vim-textobj-user'
Plugin 'glts/vim-textobj-comment'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ntpeters/vim-airline-colornum'
Plugin 'klen/python-mode'
Plugin 'airblade/vim-gitgutter'
Plugin 'jamessan/vim-gnupg'
Plugin 'tpope/vim-repeat'
Plugin 'sjl/gundo.vim'
Plugin 'evannook/matchit'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'easymotion/vim-easymotion'

filetype on

" automatic reloading of vimrc
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %

" dark background
set bg=dark

" change title of terminal
set title

" define color
colorscheme skittles_berry

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
set spelllang=de_de,en_us
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

" ignorecase on search
set ignorecase

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

" show buffers in headline
let g:airline#extensions#tabline#enabled = 1

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

" toggles without fn-keys
nnoremap <leader>1 :GundoToggle<CR>
nnoremap <leader>2 :NERDTreeToggle<CR>
