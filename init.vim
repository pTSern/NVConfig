"[ General ]"
set number                  "//< Showing the number on the leftside.
set relativenumber          "//< Smart number.
syntax enable               "//< Enable syntax.

set mouse=a                 "//< Mouse suppor.

" Set 4 spaces for tabs
set tabstop=4               
set shiftwidth=4
set expandtab

set incsearch               "//< Incrementally highlight matching characters for searching.
set hlsearch                "//< Highlight when doing search.
set showmode                "//< Show the current mode.
set clipboard=unnamedplus   "//< Enable clipboard
set showcmd                 "//< Show partial command typing.
set nowrap                  "//< No warping the line.
set wildmenu                "//< Enable auto completion menu after pressing `TAB`.
set wildmode=list:longest   "//< Make wildmenu behave like similar to `Bash`.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"[ Mapping ]"
"//v Map <space> as leader key.
let mapleader = "\<Space>"         

"//v Jump to last cursor position.
nnoremap <Leader>\ ``       
"//v Quick close current tab.
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>d dd

vnoremap <Leader>e $
inoremap jj <Esc>

"[ Scipts ]"

"[ Status line ]"
