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

" setzt den hintergrund auf dunkel
set bg=dark

" define color
colorscheme wombat256mod

" schaltet syntaxhervorherbung ein
syntax on

" schaltet zeilennummern ein
set relativenumber
set number

" schaltet aenderungsanzeige mit $ ein
set cpoptions=$

" zeigt teilbefehle rechts unten an
set showcmd

" zeigt suchbegriffe nur waehrend der suche an
set nohlsearch

" schaltet inkrementielle suche ein
set incsearch

" Automatisches Einruecken beim Tippen
filetype plugin indent on

" kompilieren und anzeigen von latex-dokumenten auf F8 mappen (habe in jedem
" latex-verzeichnis mein Makefile)
map <F8> :w!<CR> :!make show<CR><CR>

" Mail for mutt
au BufNewFile,BufRead mutt-*-\w\+,mutt\w\{6\},ae\d setf mail

" Konfiguriert und aktiviert Statuszeile
set laststatus=2

" schaltet das wildmenu ein
set wildmenu

" damit kann man den buffer wechseln ohne ihn abzuspeichern
set hid

" Anzeige von Sonderzeichen konfigurieren und aktivieren
set listchars=tab:>-,trail:_,extends:>,precedes:<
set list

" kuerzt Nachrichten auf einen 'press a key' Prompt herunter und unterdrueckt
" die startup-Nachricht
set shortmess=atI

" Rechtschreibpruefung konfigurieren
set spelllang=de_de,en_us
set spellfile=$HOME/.vim/de.add

" Rechtschreibpruefung in Mail aktivieren
autocmd FileType mail set spell

set cmdheight=2

" Einstellungen fuer Tabs
" Tabstops sind zwei Leerzeichen breit
set tabstop=2
" number of space chars inserted for indentation
set shiftwidth=2
" space instead of tab
set expandtab

" makes the tab-spaces feel like real tabs
set softtabstop=2
" keine Ersetzung von Tabs in Makefiles
au FileType make setlocal noexpandtab

" Einstellungen fuer Python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 commentstring=#\ %s
let python_highlight_all=1

" An welchen Zeichen is ein Umbruch erlaubt
set brk=\ \ !@*-+_;:,./?

" Maussupport deaktivieren
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
