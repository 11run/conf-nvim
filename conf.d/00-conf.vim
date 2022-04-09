" コメントを灰色で表示
hi Comment ctermfg=Gray
" 検索を青色で表示
hi Search ctermfg=Blue

" 文字列の置換を簡単化
nnoremap s/ :%s/
" 文字列検索後のハイライトを解除
noremap <silent> <Esc><Esc> :nohlsearch<Cr>
" vv で行末まで選択
vnoremap v ^$h
" F1をを日本語ヘルプに変更
nnoremap <silent> <F1> :help@ja<Cr>
inoremap <silent> <F1> <ESC>:help@ja<Cr>
" インサートモード時のみESCをjjでも許可
inoremap <silent> jj <ESC>
" 分割された画面の移動
nnoremap <silent><space>h <C-w>h
nnoremap <silent><space>j <C-w>j
nnoremap <silent><space>k <C-w>k
nnoremap <silent><space>l <C-w>l
nnoremap <silent><space>w <C-w>w
nnoremap <silent><space>n :tabnext<Cr>
nnoremap <silent><space>p :tabprevious<Cr>
nnoremap <silent><space>c :tabnew<Cr>

" ファイルフォーマットを指定
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
" 常にタブラインを表示
set showtabline=2
" 行番号を表示
set number
" 編集中ファイル名を表示
set title
" 改行時に前行のインデントを継続
set autoindent
" 自動インデントのズレ幅
set shiftwidth=4
" タブ文字の大きさ
set tabstop=2
" タブ文字をスペースで置き換えない
"set noexpandtab
" タブ文字をスペースで置き変える
set expandtab
" 検索時に大文字小文字の区別を行わない
set ignorecase
" 検索時に大文字が入力された場合のみ大文字小文字の区別を行う
set smartcase
" 検索結果が末尾まで進んだら先頭に戻る
set wrapscan
" インクリメンタルサーチを有効化
set incsearch
" 検索結果をハイライト表示
set hlsearch
" タブ文字，行末など不可視文字を可視化
set list
"タブと改行を指定文字で可視化
set listchars=tab:»\ ,eol:¶
" ステータスラインを表示するウィンドウを設定
set laststatus=2
" コマンドをステータスラインに標示
set showcmd
" 現在のモードを標示
set showmode
" ビープ音を鳴らさない
set visualbell
set vb t_vb=
" 256階調色表示
"set t_Co=256
" TrueColor対応
"set termguicolors
" 選択位置を強調 <- 表示が重くなるため無効化
"set cursorline
"set cursorcolumn
" クリップボードの共有化
set clipboard=unnamed
" フォントを設定
" set guifont=Ricty\ 10

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none
