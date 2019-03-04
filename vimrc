"------------------------
" 基本設定 
"------------------------
"vi非互換モード
set nocompatible

"保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

"保存時にtabをスペースに変換する
"autocmd BufWritePre * :%s/\t/  /ge


"------------------------
" インデント設定
"------------------------
set smartindent       "オートインデント
set expandtab         "タブの代わりに空白文字挿入
set tabstop=2         "タブ幅
set shiftwidth=2      "インデント幅
set softtabstop=0


"------------------------
" 表示設定
"------------------------
set number        "行番号表示
set showmode      "モード表示
set title         "編集中のファイル名を表示
set ruler         "ルーラーの表示
set showcmd       "入力中のコマンドをステータスに表示する
set showmatch     "括弧入力時の対応する括弧を表示
set laststatus=2  "ステータスラインを常に表示

"カーソル行をハイライト
set cursorline
"カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

hi clear CursorLine
hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

"全角文字でカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif


"------------------------
" 検索設定
"------------------------
set ignorecase    "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase     "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan      "検索時に最後まで行ったら最初に戻る
set noincsearch   "検索文字列入力時に順次対象文字列にヒットさせない

"Escの2回押しでハイライト消去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>


"------------------------
" 移動設定
"------------------------
"左右のカーソル移動で行間移動可能にする
set whichwrap=b,s,<,>,[,] 
"行の端まで到達すると折り返す
set wrap 


"------------------------
" 編集設定
"------------------------
"全てバックスペースで削除可能にする
set backspace=indent,eol,start


"------------------------
" 補完設定
"------------------------


"------------------------
" 色設定
"------------------------
"カラー表示
syntax on 
colorscheme zellner
"highlight Comment ctermfg=LightCyan


"------------------------
" エンコーディング設定
"------------------------
set termencoding=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,ucs2le,ucs-2
set fenc=utf-8
set enc=utf-8


"------------------------
" その他設定
"------------------------
set noinsertmode    "デフォルトモードでインサートモードにしない
set history=100     "保存するコマンド数
set visualbell      "ビープ音を消す

"ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif


"------------------------
" NeoBundle設定
"------------------------
"source ~/.dotfiles/vimrc.bundle