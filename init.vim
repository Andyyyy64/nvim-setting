" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存

" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>:" InsertMode抜けて保存
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

" #####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
set expandtab "タブ文字の代わりにスペースを使う
set splitbelow  " 水平分割時に下に表示
set splitright  " 縦分割時を右に表示
set ruler " カーソルの位置表示
set cursorline " カーソルハイライト
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント
set laststatus=2 "常にステータスを表示
set autoindent "改行時に自動的にインデントを適用
set list "タブ、空白、改行の可視化
set showcmd "入力中のコマンドを表示

" #####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索結果をハイライト表示
set incsearch
set wildmenu "コマンドラインモードの補完を見やすく

" PLUGIN SETTINGS
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'altercation/vim-colors-solarized'
Plug 'luochen1990/rainbow'
call plug#end()

" NERDTree SETTINGS
nmap <C-f> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab


" Airline SETTINGS
let g:airline_powerline_fonts = 1

" Esc SETTINGS
inoremap jk <Esc>
inoremap jj <Esc>

" /// Enable Netrw (default file browser)
" filetype plugin on
" /// Netrw SETTINGS
" let g:netwr_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_winsize = 30
" let g:netrw_sizestyle = "H"
" let g:netrw_timefmt = "%Y/%m/%d(%a) %H:%M:%S"
" let g:netrw_preview = 1

"/// SPLIT BORDER SETTINGS
hi VertSplit cterm=none
