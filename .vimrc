set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set relativenumber
set nowrap
set mouse=a

" install vim-plug with 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" install plugins with :PlugInstall

" Plugins using manager vim-plug
cal plug#begin('~/.vim/plugged')

" Install candid color scheme
Plug 'flrnprz/candid.vim'

" Install plastic color scheme
Plug 'flrnprz/plastic.vim'

" Install nerdtree; A file tree explorer
Plug 'scrooloose/nerdtree'

" end of plugins
call plug#end()

syntax on
set background=dark
colorscheme candid

set termguicolors

" Better searching is a must have
set hlsearch
set ignorecase
set smartcase

" :W to save a file like normal
command W w

" :WW to save a file as sudo
command WW w !sudo tee % > /dev/null

" :Q to force quit
command Q q!

" Spam F5 to kill off whitespace, because, you know, you hit space sometimes
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Remove last search highlight
command RH let @/ = " "

" Better Movement between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <C-n> :call RelativeNumberToggle()<cr>

function! RelativeNumberToggle()
    if &relativenumber
        set number
        set norelativenumber
    else
        set nonumber
        set relativenumber
    endif
endfunction

" Add map to opening a nerdTree
map <C-t> :NERDTreeToggle<CR>

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
