"----------------------------------------
" 2017/02/11版
" Kaoriya対策
"----------------------------------------
"テキストモードでの色テーマ
"colorscheme  onedark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"g:no_vimrc_exampleを利用してvimrc_example.vimを無効化している時はここで読込
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('g:no_vimrc_example') && g:no_vimrc_example == 1
  silent! source $VIMRUNTIME/vimrc_example.vim
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Beep音を消す
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set belloff=all

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""BackSpaceが効かない問題対策
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""light.vim表示のための設定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set encoding=utf-8
"scriptencoding utf-8

"プラグインを有効にする
filetype plugin indent on 

"タブページを常に表示
set showtabline=2
""gVimでもテキストベースのタブページを使う
"set guioptions-=e
noremap <Tab> gt<CR>
noremap <S-Tab> gT<CR>


"一行の文字数を制限する
set textwidth=0
if exists('&colorcolumn')
        "set colorcolumn=+1
        autocmd FileType vim, setlocal textwidth=80
endif
"
"********************************************************************************
set number      "行番号を表示する
set cursorline  "カーソル行の背景色を変える
set autochdir   "カレントディレクトリを自動的に変更する
set cursorcolumn "カーソル位置のカラムの背景色を変える
set ignorecase   "検索は大文字小文字の区別をしない

nnoremap <F3> :<C-u>setlocal relativenumber!<CR>

"********************************************************************************
"まずはマイドキュメントディレクトリで該当フォルダを作成すること。
"swapファイルを作成する
set swapfile
set directory=~/_vim/swp

"バックアップファイルを作成する
set backup
set backupdir=~/_vim/backUp

"viminfoファイルの設定を行う
set viminfo+=n~/_vim/viminfo/viminfo.txt

"永続的にUndoを有効にする
if has('persistent_undo')
    set undodir=~/_vim/undo
    set undofile
endif

"********************************************************************************
set ruler  "ルーラーを表示
syntax on  "シンタックスハイライトを有効にする
set nowrap  "折り返し禁止

"********************************************************************************
set laststatus =2 "ステータス行を常に表示
set statusline=%F%r%6n(BufNo.)%8L(TotalRow)%8p%%%8l,%c%=TYPE=%y[ENC=%{&fenc}] "ファイルパスの設定 パーセント、行、列設定
"set cmdheight =2  "メッセージ表示欄を２行確保
set showmatch      "対応する括弧を強調表示
set list           "不可視文字を表示

"********************************************************************************
"新しいウィンドウを下に開く
set splitbelow
"新しいウィンドウを右に開く
set splitright

"********************************************************************************
"不可視文字の表示記号設定
set listchars=tab:>-,trail:.,eol:$" タブを >--- 半スペを . で表示する

augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGrey guibg=DarkGrey
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

" Javaのハイライト設定
:let java_highlight_all=1

"インデントをTabではなくスペース４つで揃える
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"********************************************************************************
"起動時のメッセージを表示しない
set  shortmess+=I
"横スクロールバーが表示
set guioptions+=b
"ツールバーを非表示にする
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=b "横バー非表示
set guioptions-=T


"********************************************************************************

"********************************************************************************
"検索単語がヒットした場合は、見やすくするために画面中央に表示する
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

"段落移動後は画面真ん中に表示する
nnoremap  { {zz
nnoremap  } }zz
nnoremap  [[ [[zz
nnoremap  ]] ]]zz

"タグジャンプした後は、ジャンプ先を画面先頭に表示
nnoremap  <C-]> <C-]>zz
nnoremap  <C-t> <C-t>zz

"行の初めと終了
noremap <S-h>   ^
noremap <S-l>   $

"画面のスクロール
nnoremap <silent>,h H
nnoremap <silent>,l L
nnoremap <silent>,m M

"行の真ん中にカーソル移動
noremap <silent><S-m> :call cursor(0,strlen(getline("."))/2)<CR>

"スクロール関連ショットカットキー
noremap <S-f> <C-e>
noremap <S-b> <C-y>

noremap <C-j> <C-d> "ページ半分のスクロール
noremap <C-k> <C-u>

"--------------------------------------------------------------------------------
"ウィンドウ系設定
"--------------------------------------------------------------------------------
set splitbelow "新しいウィンドウを下に開く
set splitright "新しいウィンドウを右に開く

"ウィンドウサイズ調整
noremap <C-Up> <C-w>-
noremap <C-Down> <C-w>+
noremap <C-Left> <C-w><
noremap <C-Right> <C-w>>

"--------------------------------------------------------------------------------
"バッファ関連設定
"--------------------------------------------------------------------------------
noremap <C-n> :exe("bn!")<CR>
noremap <C-p> :exe("bp!")<CR>
noremap <C-d> :exe("bd")<CR>

"--------------------------------------------------------------------------------
"挿入モード関連設定
"--------------------------------------------------------------------------------

"setlocal omnifunc=syntaxcomplete#Complete
"set completeopt=menuone,preview "オムニ補完を有効にする

"--------------------------------------------------------------------------------
"特定バージョン関連設定
"--------------------------------------------------------------------------------

"Vim8.0関連設定
"スクロールスペースはなしにする
"scrolloff    number of screen lines to show around the cursor
set so=0

"--------------------------------------------------------------------------------
"外部ツールとの連携関連
"--------------------------------------------------------------------------------
"タグジャンプ関連　注：＃は特殊文字なので\\でエスケープする
"--optionsはctags.cnfファイルの定義関数もタグファイル作成時に追加するとの
"意味
" noremap <M-g>   :cd %:h<CR> :exe("!ctags -R --options=".expand($VIM)."\\ctags.cnf")<CR>
" noremap <S-w>   :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
"
"--------------------------------------------------------------------------------
"検索関連設定
"--------------------------------------------------------------------------------
"デフォルトで検索した部分をハイライトする。
set hlsearch
"ハイライトの表示切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
"nnoremap / /\v

""--------------------------------------------------------------------------------
""python3 Setting
""--------------------------------------------------------------------------------
" autocmd FileType python nnoremap <silent> <F10>  :exe("!python -m pdb %")<CR>
"autocmd FileType python map <buffer><F5>  <Plug>(quickrun)<CR>
""autocmd FileType python map <buffer> <F5> <F5> | :exe("!python -S ".expand($VIM)."\\01_Lib\\PythonRemoteDebugging\\pydbgp.py -d localhost:9000  %:p")<CR>
"
""--------------------------------------------------------------------------------
""python3 Debug Setting 
""--------------------------------------------------------------------------------
""autocmd FileType python map <buffer> <F3> :python -S pydbgp -d localhost:9000 %<CR>


"--------------------------------------------------------------------------------
" quickfix Windows height Setting
"--------------------------------------------------------------------------------
" au FileType qf call AdjustWindowHeight(3, 15)
" function! AdjustWindowHeight(minheight, maxheight)
"     let l = 1
"     let n_lines = 0
"     let w_width = winwidth(0)
"     while l <= line('$')
"         " number to float for division
"         let l_len = strlen(getline(l)) + 0.0
"         let line_width = l_len/w_width
"         let n_lines += float2nr(ceil(line_width))
"         let l += 1
"     endw
"     exe max([min([n_lines, a:maxheight]), a:minheight]) . "wincmd _"
" endfunction

"--------------------------------------------------------------------------------
"コマンドウィンドウ設定
"--------------------------------------------------------------------------------
set cmdwinheight=15
"コマンド、検索などの履歴情報の記録数を設定
set history=10000

set guitablabel=%{GuiTabLabel()}


function! GuiTabLabel()

    let length = 30
    let label = '['.bufnr('%').']'.expand("%:t")
    let bufnrlist = tabpagebuflist(v:lnum)

    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let label = '(変更)' . label
            break
        endif
    endfor

    if strlen(label) > length  "ファイル名が指定文字数以上の場合、末尾を切り詰める。
      let label = strpart(label, 0, length) . "..."
    endif

    return label
endfunction


"--------------------------------------------------------------------------------
"Filetype設定
"--------------------------------------------------------------------------------
set enc=utf-8 "これと同時に_gvimrcにてメニュー文字化け対策が必要
"set fencs=cp932,sjis,euc-jp,iso-2022-jp,utf-8


"--------------------------------------------------------------------------------
"便利のため
"--------------------------------------------------------------------------------
" メニューのショットカットキーAltを無効化する
set winaltkeys=no
inoremap <M-o> <C-[>

"--------------------------------------------------------------------------------
"Terminalモード関連設定
"--------------------------------------------------------------------------------
tnoremap <M-o> <C-w>N<CR>

" インサートモードでもundo
" imap <M-u> <Esc>:undo<CR> i

" インサートモードでもdd
"imap <M-d><M-d> <Esc>dd<CR> i

" インサートモードでもhjklで移動
imap <M-h> <Left>
imap <M-l> <Right>
imap <M-k> <Up>
imap <M-j> <Down>

" "--------------------------------------------------------------------------------
" "Python36を有効にする。しないとpython35がないと怒られる
" "--------------------------------------------------------------------------------
let g:python3_host_prog = 'C:\Python38\python.exe'
set pythonthreedll=python38.dll

" "--------------------------------------------------------------------------------
" "!コマンドをcmdからWindows
" Powershellに変更になるとvim-plugとfzfが使えないのでだめ！！
" "PSプロファイルを読み込まないプレーンなPowerShellを起動する場合
" "--------------------------------------------------------------------------------
" if has('win32') || has('win64')
"     set shell=powershell.exe
"     set shellcmdflag=-c
"     set shellquote=\"
"     set shellxquote=
" endif


"--------------------------------------------------------------------------------
set updatetime=2

" 差分モードのファイルを一気に消す
:command Bdd bd|bd
