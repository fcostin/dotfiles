set tabstop=4
set softtabstop=4
set shiftwidth=4
set tw=0
set expandtab
set backspace=indent,eol,start
set showcmd

" for solarized theme
syntax enable
set background=dark
colorscheme solarized

" for pyflakes (?)
filetype on
filetype plugin on

" statusline setup
set laststatus=2
set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]


" gvim font setup
set gfn=Inconsolata\ Medium\ 12
