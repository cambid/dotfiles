" load vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "gmarik/vundle"

" load plugins
Bundle "bling/vim-airline"
Bundle "ervandew/supertab"
Bundle "flazz/vim-colorschemes"
Bundle "godlygeek/tabular"
Bundle "regedarek/ZoomWin"
Bundle "rodjek/vim-puppet"
Bundle "scrooloose/syntastic"
Bundle "tpope/vim-commentary"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-unimpaired"
Bundle "reedes/vim-textobj-sentence"
Bundle "kana/vim-textobj-user"
Bundle "glts/vim-textobj-comment"
Bundle "kien/ctrlp.vim"
Bundle "ntpeters/vim-airline-colornum"

filetype on

" dark background
set bg=dark

" define color
colorscheme wombat256mod

" activate systax highlight
syntax on

" show linenumbers
set relativenumber
set number

" show linechanges with $
set cpoptions=$

" show commands in the lower right corner
set showcmd

" show searchterms only on search
set nohlsearch

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
set cmdheight=2

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

" disable arrowkeys in all modes
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>