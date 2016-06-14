
" vim colors
syntax enable
set background=dark
colorscheme solarized

" remove vim recording
map q <Nop>

" beginning of line
map 1 0

" end of line
map 2 $

" up paragraph
map w <S-{>
map K <S-{>

" down paragraph
map s <S-}>
map J <S-}>

" beginning of file
map W gg

" end of file
map S G

" move back one word
map H B

" move forward one word
map L E

" Adapted from: https://github.com/mathiasbynens/dotfiles/blob/master/.vimrc
" change tabs to 2 spaces
set tabstop=2

" Enable line numbers
set number

" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
