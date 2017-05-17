set background=dark
set t_Co=256
" colorscheme PaperColor
" colorscheme onedark
colorscheme molokai
" colorscheme primary
" colorscheme solarized
set cursorline
set colorcolumn=80,120
" set spell
set spellsuggest=best,10
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4
set number
set showmatch
set incsearch
set hlsearch
syntax enable
hi Normal ctermbg=none
hi CursorLine cterm=underline term=underline
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 commentstring=<!--%s-->
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType markdown setlocal textwidth=80 spell
filetype plugin indent on

" tmux stuff
" fix for different cursors in insert/visual mode
if exists('$ITERM_PROFILE')
    if exists('$TMUX') 
        let &t_SI = "\<Esc>[3 q"
        let &t_EI = "\<Esc>[0 q"
    else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
end
