set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set number
set nowrap
set mouse=a
syntax on

" Need to add this back once I find a good scheme
" colorscheme 

" Better searching is a must have
set hlsearch
set ignorecase
set smartcase

" :W to save a file like normal
command W w

" Spam F5 to kill off whitespace, because, you know, you hit space sometimes
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Brace highlighting
syn match Braces display '[{}()\[\]]'
hi Braces ctermfg=43 ctermbg=0

" 80 character line limit
2mat ErrorMsg '\%81v.'
hi ErrorMsg ctermbg=238

" Some whitespace characters:
"    Trailing spaces are a dot
"    EOL is a pilcrow
"    Tabs are arrows(I like to know when tabs somehow show up)
set list lcs=trail:·,eol:¶,tab:>—,extends:»,precedes:«
