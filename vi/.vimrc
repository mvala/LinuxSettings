" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 4 spaces
set shiftwidth=2     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
set relativenumber

" Show file stats
set ruler
" Blink cursor on error instead of beeping (grr)
set visualbell
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
