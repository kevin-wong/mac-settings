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

" Visual autocomplete for command menu
set wildmenu

" Highlight current line
set cursorline

" Enable line numbers
set number

" Change tabs to 2 spaces
set tabstop=2
        
" Tabs convert to spaces
set expandtab

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
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status bar. Options available at :h statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show status bar
set laststatus=2

" Status bar background and font colors to match solarized.
hi StatusLine ctermbg=010 ctermfg=008

" Status bar contents
set statusline +=%0*File:
set statusline +=\ %1*%F                                    " file path
set statusline +=\ %2*%m                                    " modified
set statusline +=%3*%r                                      " read only
set statusline +=%0*%=                                      " right aligned items 
set statusline +=%0*Size:
set statusline +=\ %1*%{FileSize()}                         " file size
set statusline +=%0*.
set statusline +=\ %0*Type:
set statusline +=\ %1*%Y                                    " file type
set statusline +=%0*\|%1*%{''.(&fenc!=''?&fenc:&enc).''}    " encoding
set statusline +=%0*.\ Line:
set statusline +=\ %1*%l                                    " line number
set statusline +=%0*/
set statusline +=%1*%L                                      " total line numbers
set statusline +=\ %0*(
set statusline +=%1*%p%%                                    " percent through file in lines 
set statusline +=%0*)
set statusline +=%0*.
set statusline +=\ %0*Col:
set statusline +=\ %1*%c                                    " column number
set statusline +=%0*.

" Status bar content colors
hi User1 ctermfg=14  " light grey 
hi User2 ctermfg=214 " light orange
hi User3 ctermfg=184 " yellow

function! FileSize()
    let bytes = getfsize(expand('%:p'))
    if (bytes >= 1024)
        let kbytes = bytes / 1024
    endif
    if (exists('kbytes') && kbytes >= 1000)
        let mbytes = kbytes / 1000
    endif

    if bytes <= 0
        return '0'
    endif

    if (exists('mbytes'))
        return mbytes . 'MB'
    elseif (exists('kbytes'))
        return kbytes . 'KB'
    else
        return bytes . 'B'
    endif
endfunction

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
