""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized

set encoding=utf8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show the filename in the window titlebar
set title

" Always show status bar
set laststatus=2

" Customzize status bar. Options available at :help statusline
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%)\ %P

" Visual autocomplete for command menu
set wildmenu

" Highlight current line
set cursorline

" Enable line numbers
set number

" Change tabs to 2 spaces
set tabstop=2

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Optimize for fast terminal connections
set ttyfast

" When cursor is on a brace, highlights its matching brace
set showmatch

" Enable mouse in all modes
" Drawback is that to copy, need to hold OPTION.
" Otherwise, copying enters visual mode.
" set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove vim recording
map q <Nop>

" Beginning of line
map 1 0

" End of line
map 2 $

" Up paragraph
map w <S-{>
map K <S-{>

" Down paragraph
map s <S-}>
map J <S-}>

" Beginning of file
map W gg

" End of file
map S G

" Move back one word
map H B

" Move forward one word
map L E

" Redo is shift-undo (u).
map <S-u> <C-r>

" Go to matching brace
map ` %

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
