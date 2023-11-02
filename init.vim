" GENERAL
set number 							"//< Display line's number 
set relativenumber 					"//< Display line's number follow relative style 
"
" set tabstop=4 						"//< Set 1 TAB = 4 SPACES
set shiftwidth=4
set expandtab
set autoindent 						"//< Auto index after appending new line 
set clipboard=unnamedplus 			"//< Use clipboard instead of Vim's buffer
set nowrap

set wildmenu                		"//< Enable auto completion menu after pressing `TAB`.
" set wildmode=list:longest   		"//< Make wildmenu behave like similar to `Bash`.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set cursorline
filetype plugin indent on 

"//v Mapping arena.

let mapleader = "\<Space>"

nnoremap <silent> <Leader>d :bd<CR>
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>W :wq<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>Q :q!<CR>
nnoremap <silent> <Leader>d :bd<CR>
nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <Leader><Tab> :bp<CR>
nnoremap <silent> <Leader>h :noh<CR>
nnoremap <silent> <Leader>v :vs<CR><C-w><C-w>
nnoremap <silent> <Leader>l :ls<CR>
nnoremap <silent> <Leader>ww <C-w><C-w>

nnoremap <silent> <Leader><Leader>t :ter<CR>

vnoremap <Leader>e $
inoremap jj <Esc>

" Add the following syntax highlighting related configuration to your ~/.config/nvim/init.vim file:
" The ^[ here is one character that you can type with control-v ESC.

if has('nvim')
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
  set termguicolors
endif
" colorscheme cwcolors
" colorscheme catppuccin
" colorscheme kanagawa.nvim
syntax enable

" Recommended, but optionally add:

" Set tag file if REPOBASE is set. This assumes you set the environment
" variable REPOBASE to reflect the base directory of your current project
" and generated your ctags file as $REPOBASE-objdir/tags.
if $REPOBASE != ""
  set tags=$REPOBASE-objdir/tags
endif

" Highlight trailing spaces.
let c_space_errors=1
" Don't highlight the Next match while typing a regular expression search.
set noincsearch

" Obviously remove any conflicting lines.

" INSTALL PLUGIN FOR NVIM
call plug#begin('~/AppData/Local/nvim/plugged')

" Theme
 Plug 'joshdick/onedark.vim',			" Onedark theme
 Plug 'rebelot/kanagawa.nvim'
 Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
 Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
 Plug 'daltonmenezes/aura-theme', {'rtp': 'packages/neovim'}
 Plug 'ryanoasis/vim-devicons'

" File browser 
 Plug 'preservim/nerdTree'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'

" Status bar
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'

" Code syntax hightlight 
 Plug 'jackguo380/vim-lsp-cxx-highlight'
 Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' } " Jedi language server 
 Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
 Plug 'preservim/nerdcommenter' 
 
" Code brain 
 Plug 'neoclide/coc.nvim', 
    \ {'branch': 'release'}

 " Terminal
 Plug 'voldikss/vim-floaterm'			" Float terminal

" Vim help

" Enhance

" END
call plug#end()

let nvim_settings_dir = '~\AppData\Local\nvim\settings\'
execute 'source ' .nvim_settings_dir.'nerdtree.vim'
execute 'source ' .nvim_settings_dir.'airline.vim'
execute 'source ' .nvim_settings_dir.'floatterm.vim'
execute 'source ' .nvim_settings_dir.'coc.vim'
execute 'source ' .nvim_settings_dir.'nerdcommenter.vim'
execute 'source ' .nvim_settings_dir.'fzf.vim'

" All functions
function! ShowCocWiki()
   botright new " Open a new buffer for the popup
   setlocal buftype=nofile
   setlocal bufhidden=hide
   setlocal noswapfile
   setlocal nobuflisted
   setlocal nowrap
   setlocal nospell
   setlocal number
   setlocal foldcolumn=0
   setlocal winfixwidth
   setlocal signcolumn=no
   setlocal cursorline
   setlocal cursorcolumn
   setlocal colorcolumn=
   setlocal statusline=
   setlocal winwidth=30 " Adjust this to your preferred width
   setlocal winheight=10 " Adjust this to your preferred height

   " Set the file path for your wiki content within your Neovim config directory
   execute 'read $HOME/AppData/Local/nvim/wiki/coc.md'

   " Set the filetype if needed (e.g., Markdown)
   setlocal filetype=markdown
   setlocal nomodifiable
   nnoremap <buffer><silent> <esc> :q<CR>
endfunction

nnoremap <leader>?coc : call ShowCocWiki()<CR>

" -- Toggle Cursor Column -- "
let g:cursor_column = 0

function! ToggleCursorColumn()
    if g:cursor_column
        set nocursorcolumn
        let g:cursor_column = 0
        echo "[Notify]: Turn off CursorColumn"
    else
        set cursorcolumn
        let g:cursor_column = 1
        echo "[Notify]: Turn on CursorColumn"
    endif
endfunction

nnoremap <silent><leader>hc :call ToggleCursorColumn()<CR>

" -- Toggle Cursor Column -- "
let g:cursor_line = 0

function! ToggleCursorLine()
    if g:cursor_line
        set nocursorline
        let g:cursor_line = 0
        echo "[Notify]: Turn off CursorLine"
    else
        set cursorline
        let g:cursor_line = 1
        echo "[Notify]: Turn on CursorLine"
    endif
endfunction

nnoremap <silent><leader>hl :call ToggleCursorLine()<CR>
" -- Toggle Wrap Mode -- "
let g:wrap_mode = 0

function! ToggleWrapMode()
    if g:wrap_mode
        set wrap
        let g:wrap_mode = 1
        echo "[Notify]: Wraping the line."
    else
        set nowrap
        let g:wrap_mode = 0
        echo "[Notify]: Stop wraping line."
    endif
endfunction

nnoremap <silent><leader>hw :call ToggleWrapMode()<CR>


