call plug#begin('$VIM/plugins')

" Make sure you use single quotes

    " NERD Tree
    Plug 'scrooloose/nerdtree'

    " NERD commenter
    Plug 'scrooloose/nerdcommenter'

    "tagbar
    Plug 'majutsushi/tagbar'

    " " MRU
    Plug 'yegappan/mru'

    " SQL Formatting
    Plug 'mattn/vim-sqlfmt'

    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'junegunn/vim-easy-align'

    " neocomplete.vim
    " Plug 'Shougo/neocomplete.vim'

    " ctrlp.vim Vim plugin for Fuzzy file
    Plug 'kien/ctrlp.vim'

    " vim-bufonly.vim Delete all the buffers except the current buffer
    Plug 'schickling/vim-bufonly'

    " vim-singleton.vim Uses Vim with singleton
    Plug 'thinca/vim-singleton'

    " vim-surround.vim Vim plugin for Improved incremental search
    Plug 'tpope/vim-surround'

    " vim-bookmarks.vim Vim bookmark plugin
    Plug 'MattesGroeger/vim-bookmarks'

    " quick run Plugin 
    " Plug 'thinca/vim-quickrun'

    "" nerdtree-execute
    Plug 'ivalkeen/nerdtree-execute'

    "" python3 Plugin :automatically formats Python code need Install jedi  Labrary from pip
    Plug 'tell-k/vim-autopep8'

    "" python3 Plugin :Syntax highlighting
    Plug 'vim-python/python-syntax'

    "" Typescript syntax files for Vim
    Plug 'leafgarland/typescript-vim'

    "" lexima Plugin :Auto close parentheses 
    Plug 'cohama/lexima.vim'

    "extended % matching for Many Fromats
    Plug 'tmhedberg/matchit'

    "A Vim plugin for Windows PowerShell support
    Plug 'PProvost/vim-ps1'

    "improved Javascript indentation and syntax support in Vim
    Plug 'pangloss/vim-javascript'

    "input support in written HTML &CSS 
    Plug 'mattn/emmet-vim'

    " "A code-completion engine for Vim
    " Plug 'Valloric/YouCompleteMe'

    "fuzzy finder Plugin
    Plug 'junegunn/fzf.vim'

    " " Git Plugin
    " Plug 'tpope/vim-fugitive'

    " A light and configurable statusline/tabline plugin for vim
    Plug 'itchyny/lightline.vim'

    " A dark vim color scheme inspired by Atoms One Dark syntax theme
    Plug 'joshdick/onedark.vim'


    " incsearch
    Plug 'haya14busa/incsearch.vim'

    " Run Async Shell Commands in Vim 8.0 and Output to Quickfix Window
    Plug 'skywind3000/asyncrun.vim'

    " Markdown Plugins
    " if you don't have nodejs and yarn
    " use pre build
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

    " " Adds file type icons to Vim plugins
    " Plug 'ryanoasis/vim-devicons'


    " have nodejs and yarn
    " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

    " " Syntax checking Plugin
    " Plug 'vim-syntastic/syntastic'

    " PluginのYouCompleteMeと衝突するため、無効化
    " " python3 Plugin : autocompletion need Install jedi Labrary from pip
    " Plug 'davidhalter/jedi-vim'

    " pt.vim Vim plugin for the platinum_search
    Plug 'nazo/pt.vim'


    " A VIM multi-language debugger plugin
    Plug 'jayli/vim-easydebugger'

    " visually displaying indent levels in Vim
    Plug 'nathanaelkane/vim-indent-guides'

    " vim-lsp plugin
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'

    " add syntax check feature in vim
    Plug 'dense-analysis/ale'
    Plug 'maximbaz/lightline-ale'

    " add snippet feature in vim
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

    " add autocompletion feature in vim
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/asyncomplete-buffer.vim'
    Plug 'prabirshrestha/asyncomplete-file.vim'


    " Vim syntax highlighting for Vue components
    " And also work in ALE with install eslint and eslint-plugin-vue using npm
    Plug 'posva/vim-vue'

    " A Vim plugin for Prettier
    " Plug 'prettier/vim-prettier'
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', {
                \ 'do': 'yarn install',
                \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

    " NERD syntax highlighting
    " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    "" dbext.vim
    "Plug 'vim-scripts/dbext.vim'

    "" twig syntax highlighting
    "Plug 'evidens/vim-twig'


    " Git Plugin shows a git diff in the gutter and stages/undoes hunks
    " Plug 'airblade/vim-gitgutter'

    "" NERDTree and Tagbar combined in one windows
    "Plug 'pseewald/nerdtree-tagbar-combined'

    "" Customize statusbar

    "" powerline-extra-symbols
    "Plug 'ryanoasis/powerline-extra-symbols'

    "" grep.vim
    "Plug 'vim-scripts/grep.vim'

    "" python3 Plugin : debug Tool
    "Plug 'joonty/vdebug'

call plug#end()
