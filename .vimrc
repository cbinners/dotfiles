call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'jordwalke/JSDocSnippets'
" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'rust-lang/rust'
Plug 'bling/vim-airline'
Plug 'benekastah/neomake'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'honza/vim-snippets'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mxw/vim-jsx'
Plug 'tomasr/molokai'
Plug 'sickill/vim-pasta'
Plug 'ap/vim-css-color'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'rking/ag.vim'
Plug 'eslint/eslint'
Plug 'pangloss/vim-javascript'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-unimpaired'
call plug#end()

" ilet g:airline_powerline_fonts = 1

autocmd! BufWritePost * Neomake
autocmd StdinReadPre * let s:std_in=1

let mapleader = "\<Space>"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>v :vsp ~/.vimrc<CR>
inoremap jk <ESC>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

nnoremap / /\v
vnoremap / /\v


nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>f :Ag<Space>
nnoremap <Leader><Space> :noh<CR>

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

set autoindent
set smartindent

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

set history=1000                        " History Depth
set undolevels=100                      " Undo Depth

set visualbell                          " No Sounds
set noerrorbells                        " No Sounds

set noswapfile        " No Swap File
set nobackup                            " No Backup
set nowritebackup                       " No Write Backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set hidden                              " Allow background buffers
set autoread                      " Reload Files Automatically
set nowrap                              " No Line Wrap
set wildmode=longest:full               " Bash Style Autocompletes
set wildmenu
set clipboard=unnamed

set cursorline
set number
set relativenumber

syntax enable
set background=dark
color molokai

if has('nvim')
 nmap <bs> <c-w>h
endif

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let g:ctrlp_match_window = 'bottom,max:40'
let g:ctrlp_mruf_relative = 1
let g:ctrlp_user_command = 'ag %s -l -g ""'

" AG is so fast we dont need caching
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 0
let g:python3_host_prog = '/Users/corybinnersley/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/Users/corybinnersley/.pyenv/versions/neovim2/bin/python'
let g:deoplete#enable_at_startup = 1
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

let g:neomake_javascript_enabled_makers = ['eslint']

filetype indent plugin on
