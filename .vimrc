" call pathogen#infect()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set tw=0
set expandtab
set backspace=indent,eol,start
set showcmd

" give me mo' colour, s/gnome/mate terminal
if $COLORTERM == 'gnome-terminal' || $COLORTERM == 'mate-terminal'
  set t_Co=256
endif

" for solarized theme
syntax enable
 set background=dark
" colorscheme solarized
" colorscheme xoria256

filetype on
filetype plugin on

" statusline setup
"set laststatus=2
"set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]

" gvim font setup
set gfn=Inconsolata\ Medium\ 12

" force syntastic to use pyflakes
"g:syntastic_python_checker = 'pyflakes'
"

"make trailing whitespace look awful
match Todo /\s\+$/

"relative line numbers to aid movement
"set relativenumber


augroup ft_csharp
    au!

    au BufRead,BufNewFile *.cs    set filetype=cs

    au FileType cs setlocal ff=dos
augroup END
