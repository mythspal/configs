" syntax highlighting
syntax on

" wrap text and comment after 79 characters
set textwidth=79

" display right margin at 80 char
set colorcolumn=80

" function of backspace character
set backspace=indent,eol,start

" show line number
set number

" use spaces instead of tab
set expandtab

" tabstop tells vim how many columns a tab counts for.
set tabstop=4

" shiftwidth controls how many columns text is indented with the reindent
" operations (<< and >>) and automatic C-style indentation
set shiftwidth=4

" softtabstop controls how many columns vim uses when Tab is hit in insert
" mode. When expandtab is set, vim will always use the appripriate number of
" spaces.
set softtabstop=4

" Allow the user to insert an actual tab with:
"     Ctrl + T
inoremap <C-T> <C-V><Tab>

" highlight search
set hlsearch

" underline the current line
set cursorline

" no line wrapping
set nowrap

" wrap navigation around line
" <,> cursor keys used in normal and visual mode
" [,] cursor keys used in insert mode 
set whichwrap+=<,>,h,l,[,]

" automatically change to directory where current file is located
set autochdir

set autoindent

" vim status line at the bottom
set laststatus=2

set modeline

set splitright

set spell spelllang=en_us

" utf-8!
set encoding=utf-8 fileencoding=utf-8

" the j flag discards leading whitespace and comment symbol when joining two lines
set formatoptions+=aj

colorscheme desert

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  autocmd FileType xsd setlocal shiftwidth=2 tabstop=2 softtabstop=2
endif

" set the tab background and foreground color
hi TabLineSel ctermfg=Red ctermbg=Yellow

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
