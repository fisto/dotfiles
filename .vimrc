set nocompatible "vi非互換モード

"#######################
" 表示系
"#######################
set number "行番号表示
set showmode "モード表示
set title "編集中のファイル名を表示
set ruler "ルーラーの表示
set showcmd "入力中のコマンドをステータスに表示する
set showmatch "括弧入力時の対応する括弧を表示
set laststatus=2 "ステータスラインを常に表示

"#######################
" プログラミングヘルプ系
"#######################
syntax on "カラー表示
set smartindent "オートインデント
" tab関連
set expandtab "タブの代わりに空白文字挿入
set tabstop=2 "タブ幅
set shiftwidth=2 "インデント幅
set softtabstop=0 
" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

"#######################
" 検索系
"#######################
set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
set nohlsearch "検索結果文字列の非ハイライト表示

"#######################
" 追加
"#######################
set noinsertmode "デフォルトモードでインサートモードにしない
set wrap "行の端まで到達すると折り返す
set history=100 "保存するコマンド数
set hlsearch "検索ワードをハイライトする
set backspace=indent,eol,start "全てバックスペースで削除可能にする
"set backup
"set backupdir=$HOME/.vimbackup
set visualbell "ビープ音を消す
"set vb t_vb=
set whichwrap=b,s,<,>,[,] "左右のカーソル移動で行間移動可能にする。

"#######################
" 表示色
"#######################
colorscheme zellner
highlight Comment ctermfg=LightCyan

"#######################
" UTF-8
"#######################
set termencoding=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,ucs2le,ucs-2
set fenc=utf-8
set enc=utf-8
