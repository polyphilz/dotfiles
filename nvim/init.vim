call plug#begin("~/.vim/plugged")
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Yggdroot/indentLine'
  Plug 'Glench/Vim-Jinja2-Syntax' " Make Jinja and Nunjucks pretty
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
  Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme onehalfdark
set background=dark

" Enable line numbers
let NERDTreeShowLineNumbers=1
" Make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
let g:NERDTreeWinSize=50 " Width of NERDTree pane
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Toggle
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" Arbitarily using '%%' for commenting out (added keybinding in alacritty.yml
" to convert Command + / to '%%')
vmap %% <plug>NERDCommenterToggle
nmap %% <plug>NERDCommenterToggle

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-python',
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden

" =============================================================================
" # Editor settings
" =============================================================================
set encoding=UTF-8

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
set hls " highlight search
set hlsearch " Will stop highlighting current search 'hits' when another search is performed.

set nojoinspaces " suppress inserting two spaces between sentences
set expandtab " convert tabs to spaces
set shiftwidth=2 " One tab is now 2 spaces.
set shiftround " Always round up to the nearest tab.
set tabstop=2 " This one is also needed to achieve the desired effect.
set softtabstop=2 " Enables easy removal of an indentation level.

set mouse=a " Use mouse when absolutely needed

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" =============================================================================
" # GUI settings
" =============================================================================
" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" always show signcolumns
set signcolumn=yes

" Change character for indent line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
