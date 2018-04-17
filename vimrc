set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set ruler
set hlsearch
set cursorline
set cursorcolumn
set runtimepath+=~/.vim/bundle/swift.vim
syntax on
colorscheme koehler
set guifont=Monaco:h12
filetype on
filetype indent on
filetype plugin on
execute pathogen#infect()
let g:jsx_ext_required = 0
let g:syntastic_python_checkers=['']
let g:syntastic_check_on_open = 0
autocmd BufNewFile,BufRead *.json set ft=javascript

set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

"hi User1 ctermbg=yellow   ctermfg=blue  guibg=yellow   guifg=blue
"hi User2 ctermbg=DarkGray  ctermfg=green guibg=DarkGray  guifg=green
"
"set statusline=
"set statusline+=%1*
"set statusline+=%F
"set statusline+=%2*
"set statusline+=%P
