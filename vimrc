"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula

filetype plugin indent on "enable file type detection
set autoindent

"---------------------
" Basic editing config
"---------------------
set nu " number lines
set hls " highlight search
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" tab completition for files/bufferss
set wildmode=longest,list
set wildmenu

"--------------------
" Misc configurations
"--------------------

set splitbelow
set splitright

" markdown
let g:markdown_fenced_languages = [
    \ 'asm',
    \ 'bash=sh',
    \ 'c',
    \ 'coffee',
    \ 'erb=eruby',
    \ 'javascript',
    \ 'json',
    \ 'perl',
    \ 'python',
    \ 'ruby',
    \ 'yaml',
    \ 'go',
    \ 'racket',
    \ 'haskell',
    \ 'rust',
\]
let g:markdown_syntax_conceal = 0
let g:markdown_folding = 1
