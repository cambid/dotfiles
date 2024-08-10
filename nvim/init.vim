if exists('g:vscode')
    " VSCode extension
else
    " ordinary Neovim
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
endif
