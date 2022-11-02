"
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

" a workaround i found to adding the material theme
"source ~/.vim/plugged/material.vim/colors/material.vim

set nocompatible " not sure really needed but who cares

"dont use autocomplete -~ apperantly causes bugs
"set undofile     " turn on the undofile feature
"set undodir=~/.vim/undo " the dir where all undofiles go

set nobackup
set nowritebackup
set noswapfile
set showcmd
set incsearch
set smartcase
set ignorecase
set hidden
set number
set tabstop=2
set shiftwidth=2
set splitbelow
set splitright
set cursorline
set wildmenu
set showmatch
set shortmess+=c  
set updatetime=750
set timeoutlen=1000
set ttimeoutlen=0
let mapleader=' '
filetype plugin on
"set omnifunc=syntaxcomplete#Complete
"highlight Pmenu guibg=DarkCyan gui=bold

call plug#begin('~/.vim/plugged')

"Plug 'davidhalter/jedi-vim'
"let g:jedi#use_splits_not_buffers = "right"

Plug 'ycm-core/YouCompleteMe'


"Plug 'sheerun/vim-polyglot'

Plug 'vim-python/python-syntax'
"let g:python_highlight_all=1

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'NLKNguyen/papercolor-theme'
"Plug 'haishanh/night-owl.vim'

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) -
" https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511

if (has('termguicolors'))
   set termguicolors
endif

" Initialize plugin system
call plug#end()



syntax enable
set background=dark
colorscheme PaperColor


autocmd FileType python map <buffer> <F3> :w<CR>:exec '!clear; python3 % \| less'<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!clear; python3 % \| less'<CR>
autocmd FileType python map <buffer> <F2> :w<CR>:exec '!clear; python3 %'<CR>
autocmd FileType python imap <buffer> <F2> <esc>:w<CR>:exec '!clear; python3 %'<CR>

" GUIDELINES:

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

