set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,korea,sjis,gb18030,latin1
set ambiwidth=double
let &termencoding = &encoding
set ffs=unix,dos
set ff=unix

filetype indent on
filetype plugin on

" support 256 colors
set t_Co=256
" do not wrap lines, it is not that annoying if you are a 1-line lover
set nowrap
" display numbers in leftmost column
set nu  "line number
set paste
set autoindent
set ic	"第幾行第幾個字
set hlsearch  "highlight search

set confirm
set cursorline  "cursorline
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
set backspace=start,indent,eol

syntax on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set fdm=marker

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Ctrl+C comment selected lines
vmap <C-C> :s/^/\/\//<CR>:noh<CR>
" Ctrl+U uncomment selected lines
vmap <C-U> :s/^\/\///<CR>:noh<CR>

" set leader to comma
let mapleader = "," 
" Ctrl+T create a new tab
nmap <C-T> :tabnew<CR>
" Ctrl+H go to previous tab
nmap <C-H> :tabprev<CR>
" Ctrl+L go to next tab
nmap <C-L> :tabnext<CR>
" Ctrl+K close current tab
nmap <C-K> :tabclose<CR>
" ,1 go to 1st tab, ,2 go to 2nd tab..etc
nmap <leader>1 :1tabnext<CR>
nmap <leader>2 :2tabnext<CR>
nmap <leader>3 :3tabnext<CR>
nmap <leader>4 :4tabnext<CR>
nmap <leader>5 :5tabnext<CR>
nmap <leader>6 :6tabnext<CR>
nmap <leader>7 :7tabnext<CR>
nmap <leader>8 :8tabnext<CR>
nmap <leader>9 :9tabnext<CR>
nmap <leader>10 :10tabnext<CR>

" ,d delete contents inside html tags
" example: <li>Content</li> 
" you could navigate to any character of Content and type ,d to delete all contents 
nmap <leader>d dt<dT>i
" ,q quit vim
nmap <leader>q :q!<CR>
" ,w save current status
nmap <leader>w :w!<CR>
" ,x save current status and quit vim
nmap <leader>x :wq!<CR>
map ,f [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
nnoremap <Esc>P  P'[v']=
nnoremap <Esc>p  p'[v']=

map <F2> :NERDTreeToggle<CR>

:ab #b /************************************************
:ab #e ************************************************/

augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 
