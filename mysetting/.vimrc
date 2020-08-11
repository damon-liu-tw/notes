set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" src: https://kknews.cc/zh-tw/code/3aay943.html
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/indentpython.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"set number " 顯示列號
syntax on " 語法高亮度顯示
let python_highlight_all=1
set hlsearch " 標記搜尋到的字串
"set autoindent " 自動縮排
set ruler " 顯示說明
set showmode " 顯示編輯狀態
highlight Search term=reverse ctermbg=4 ctermfg=7 " 設定搜尋到的字串顏色
set tabstop=4 " 設定 tab 鍵的字元數
set fenc=utf-8 "文件編碼"
set encoding=utf-8
set showmatch "顯示匹配的括號"
set cursorline "突出顯示當前行"
highlight Comment ctermfg=DarkGrey " 設定註解的顏色"

" Theme
set background=dark
colorscheme solarized


" Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2 "命令行為兩行" 

" NERDTree
"F2開啟和關閉樹"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"顯示書籤"
let NERDTreeShowBookmarks=1
"設置忽略文件類型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
"let NERDTreeWinSize=25


" Python VIM as IDE
"au BufNewFile,BufRead *.py set tabstop=4 set softtabstop=4
"\ set shiftwidth=4
"\ set textwidth=79
"\ set expandtab
"\ set autoindent
"\ set fileformat=unix

