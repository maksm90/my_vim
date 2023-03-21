set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'embear/vim-localvimrc'
Plugin 'aserebryakov/filestyle'
Plugin 'powerman/vim-plugin-ruscmd'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'damage220/solas.vim'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'matze/vim-move'
Plugin 'scrooloose/nerdtree'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'shaneharper/vim-rtags'
Plugin 'universal-ctags/ctags'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <F2> :w<CR>
imap <F2> <Esc>:w<CR>
map <F10> <Esc>:q<CR>
map <F11> <Esc>:qa<CR>

set number

set expandtab
set tabstop=4 shiftwidth=4
set autoindent cindent cinoptions="(0,t0"

map <C-W><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set laststatus=2

set autoread
set autowrite

" GUI settings
if has('gui_running')
    set guioptions-=m   " remove menubar
    set guioptions-=T   " remove toolbar
    set guioptions-=r   " remove right-hand scroll bar
    set guioptions-=L   " remove left-hand scroll bar
else
    hi Normal ctermbg=None
endif

" airline settings
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#tab_min_count = 0

" copy path to current file into clipboard
nmap cp :let @" = expand("%")<CR>
nmap cP :let @* = expand("%")<CR>

" NERDComment settings
let g:NERDSpaceDelims = 1
map <C-\> <Leader>c<space>

" TagBar settings
map <F8> :TagbarToggle<CR>

" Move settings
let g:move_key_modifier = 'C'

" NEDRTree settings
map <F5> :NERDTreeToggle<CR>

" easytags settings
let g:easytags_file = './tags'
let g:easytags_auto_highlight = 0
let g:easytags_events = ['BufWritePost']
let g:easytags_async = 1

" Markdown preview settings
let vim_markdown_preview_browser='firefox'

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" localvimrc settings
let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0

" enable cscope
source ~/.vim/plugins/cscope_maps.vim
