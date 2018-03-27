filetype off
call plug#begin('~/.config/nvim/plugged')

" Dependency for deoplete (and others?)
Plug 'roxma/nvim-yarp'
" Awesome completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'commit': '967f8b4a6ff77b446693583d3220b012edc6794b' }
" Deoplete source for Ruby
Plug 'Shougo/deoplete-rct'
" Completion based on language syntax highlighting
Plug 'Shougo/neco-syntax'

" Awesome theme
Plug 'iCyMind/NeoSolarized'
" Nicer file navigation
Plug 'tpope/vim-vinegar'
" Dependency for vim-notes:
Plug 'xolox/vim-misc'
" Note taking within Vim
Plug 'xolox/vim-notes'
" Fast project-wide search
Plug 'rking/ag.vim'
" Easily change, delete, and add surroundings
Plug 'tpope/vim-surround'
" Quickly convert Ruby block formats
Plug 'jgdavey/vim-blockle'
" Ruby support
Plug 'vim-ruby/vim-ruby'
" Awesome Rails support
Plug 'tpope/vim-rails'
" Awesome snippets
Plug 'SirVer/ultisnips'
" Default snippets
Plug 'honza/vim-snippets'
" Awesome Git support within Vim
Plug 'tpope/vim-fugitive'
" GitHub integration for vim-fugitive
Plug 'tpope/vim-rhubarb'
" Auto-pairing of quotes/brackets/etc
Plug 'vim-scripts/AutoClose'
" Easily un/comment code
Plug 'tpope/vim-commentary'
" Send commands to tmux
Plug 'cvincent/tslime.vim'
" RSpec launcher
Plug 'thoughtbot/vim-rspec'
" Dot-repeat for plugins
Plug 'tpope/vim-repeat'
" Unix commands
Plug 'tpope/vim-eunuch'
" Various functionality for bracket keys
Plug 'tpope/vim-unimpaired'
" Awesome Subvert command for intelligent substitution
Plug 'tpope/vim-abolish'
" The latest support for HAML, SASS, and SCSS
Plug 'tpope/vim-haml'
" Linking up files for easy access/alternates
Plug 'tpope/vim-projectionist'
" Elixir support
Plug 'elixir-lang/vim-elixir'
" alchemist-server integration for Elixir
Plug 'slashmili/alchemist.vim'
" Support for Phoenix web framework
Plug 'avdgaag/vim-phoenix'
" Modern JavaScript support
Plug 'pangloss/vim-javascript'
" " More JavaScript support
" Plug 'ternjs/tern_for_vim'
" JSX support
Plug 'mxw/vim-jsx'
" Automatically add end and such
Plug 'tpope/vim-endwise'
" Easily insert paired HTML/XML tags, and more
Plug 'tpope/vim-ragtag'
" Create scratch buffer easily
Plug 'vim-scripts/scratch.vim'
" Support for the Rust language
Plug 'wting/rust.vim'
" Open files from QuickFix in window of choice (finally!)
Plug 'yssl/QFEnter'
" Persistent sessions
Plug 'tpope/vim-obsession'
" Crystal support
Plug 'rhysd/vim-crystal'
" Brightscript (Roku) support
Plug 'chooh/brightscript.vim'
" Inline syntax support
Plug 'Shougo/context_filetype.vim'
" Better Ruby heredoc support, with inline syntax
Plug 'joker1007/vim-ruby-heredoc-syntax'
" CoffeeScript support (vim-ruby-heredoc-syntax expects it)
Plug 'kchmck/vim-coffee-script'
" Vim debug tools
Plug 'tpope/vim-scriptease'

" " Fuzzy file finder
" Plug 'kien/ctrlp.vim'
" " Move buffers between windows
" Plug 'wesQ3/vim-windowswap'
" " Text object for indent levels
" Plug 'michaeljsmith/vim-indent-object'
" " Alignments
" Plug 'junegunn/vim-easy-align'

call plug#end()
filetype plugin indent on

" ### BASIC CONFIG

" Allow buffers in the background
set hidden

" " Easier to move to line *and* column of mark
nnoremap ' `
nnoremap ` '

" " Let's try spacebar leader
let mapleader=" "

" Nice, long ex command history
set history=10000

" Enhanced % pair matching (blocks, XML tags, etc)
runtime! macros/matchit.vim

" Match angle brackets
set matchpairs+=<:>

" Expected ex command completion behavior
set wildmenu
set wildmode=list:longest

" Case insensitive ex command file completion
set wildignorecase

" Case-sensitive only if pattern includes an uppercase letter
set ignorecase
set smartcase

" Show title in Terminal
set title

" Minimum of three lines from vertical edges
set scrolloff=3

" Get various temporary files out of the way
set directory=/tmp/
set nobackup
set nowritebackup
set noswapfile

" Intuitive backspace in insert mode
set backspace=indent,eol,start

" Syntax highlighting
syntax on
" Highlight current line
set cursorline

" Start searching while typing
set incsearch

" Show bad whitespace, toggleable
set list
set listchars=tab:>-,trail:·
nmap <silent> <leader>l :set nolist!<CR>

" Shorten various Vim messages
set shortmess=atI

" UTF-8 all the things
scriptencoding utf-8

" Don't ask if file was changed outside Vim
set autoread

" Persistent undo (if available)
if v:version >= 703
  " Set undofile.
  set undofile
  let &undodir=&directory
endif

" Insert completion menu
set completeopt=menuone,preview

" Smart completion with case
set infercase

" Hide pointer when typing
set mousehide

" Spaces, not tabs
set expandtab

" Tab stop is 2 spaces by default
set tabstop=2
set softtabstop=2

" 2 spaces for <</>> indentation
set shiftwidth=2
set shiftround

" Basic auto-indent
set autoindent

" Per-project .vimrc files; safe commands only
set exrc
set secure

" Replace all matches on a line
set gdefault

" Don't wrap long lines
set nowrap

" Scroll 10 lines with CTRL-U/D
set scroll=10

" Always show status line
set laststatus=2

" Dark Solarized
" set termguicolors
set background=dark
colorscheme NeoSolarized

" Don't highlight search
set nohlsearch

" Have vim always use bash; we might be using fish or something
set shell=/bin/bash

" Source other customizations
for f in split(glob('~/.config/nvim/rc/*.vim'), '\n')
  exe 'source' f
endfor
