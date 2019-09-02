" Set 4 spaces globally & make indenting sane.
" ... Note that 'set paste' destroys indentation.
"
" We could also set `tabstop`, but let's
" keep tabs 'natural'.
set softtabstop=4 shiftwidth=4 expandtab autoindent

" Allow the user to insert an actual tab with:
"     Ctrl + T
inoremap <C-T> <C-V><Tab>

" utf-8!
set encoding=utf-8 fileencoding=utf-8

" remap leader key from forward slash \ to space
let mapleader = " "

" use system clipboard
set clipboard^=unnamed,unnamedplus

"
" Start of `fix-vim-pasting`.
"

" https://github.com/ryanpcmcquen/fix-vim-pasting
"
" Because Vim doesn't like
" pasting that works.

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

"
" End of `fix-vim-pasting`.
"

" Shortcut to edit vimrc
nnoremap <Leader>ve :e $MYVIMRC<CR>

" Shortcut to reload vimrc
nnoremap <Leader>vr :source $MYVIMRC<CR>
