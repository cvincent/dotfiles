filetype off

call plug#begin('~/.config/nvim/plugged')

""""""""""""""""""""
""" AUTOCOMPLETE """
""""""""""""""""""""
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

""""""""""""""""""""""
""" USER INTERFACE """
""""""""""""""""""""""
" Nice status line
Plug 'vim-airline/vim-airline'
Plug 'cvincent/vim-airline-themes'
" Get colors from wal config
" Plug 'dylanaraps/wal.vim'
" Solarized
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
" Plug 'altercation/vim-colors-solarized'
" Seamless navigation within tmux
" Doesn't work alongside split nav wrapping
" Plug 'christoomey/vim-tmux-navigator'
" Automatically stop highlighting search
Plug 'romainl/vim-cool'
" Allow highlighting the search result under the cursor
Plug 'PeterRincker/vim-searchlight'
" Smooth scrolling
Plug 'terryma/vim-smooth-scroll'

""""""""""""""""""""""""
""" IDE-LIKE SUPPORT """
""""""""""""""""""""""""
" Nicer file navigation
Plug 'tpope/vim-vinegar'
" Linking up files for easy access/alternates
Plug 'tpope/vim-projectionist'
" Tags manager
Plug 'ludovicchabant/vim-gutentags'
" Fast project-wide search
Plug 'rking/ag.vim'
" Persistent sessions
Plug 'tpope/vim-obsession'
" Awesome Git support within Vim
Plug 'tpope/vim-fugitive'
" Show changes in gutter
Plug 'mhinz/vim-signify'
" GitHub integration for vim-fugitive
Plug 'tpope/vim-rhubarb'
" Awesome snippets
Plug 'SirVer/ultisnips'
" Default snippets
Plug 'honza/vim-snippets'
" Send commands to tmux
Plug 'jpalardy/vim-slime'
" Open files from QuickFix in window of choice (finally!)
Plug 'yssl/QFEnter'
" Create scratch buffer easily
Plug 'vim-scripts/scratch.vim'
" Fuzzy finding, and other list-oriented stuff
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"""""""""""""""""""""
""" PROSE EDITING """
"""""""""""""""""""""
" Dependency for vim-notes
Plug 'xolox/vim-misc'
" Note taking within Vim; using my branch which fixes conflict with ncm2
Plug 'cvincent/vim-notes'
" For editing non-code
Plug 'junegunn/goyo.vim'

""""""""""""""""""""
""" CODE EDITING """
""""""""""""""""""""
" Auto-indent on put
Plug 'sickill/vim-pasta'
" Easily change, delete, and add surroundings
Plug 'tpope/vim-surround'
" Auto-pairing of quotes/brackets/etc
Plug 'vim-scripts/AutoClose'
" Easily un/comment code
Plug 'tpope/vim-commentary'
" Dot-repeat for plugins
Plug 'tpope/vim-repeat'
" Awesome Subvert command for intelligent substitution
Plug 'tpope/vim-abolish'
" Alignments
Plug 'junegunn/vim-easy-align'

""""""""""""""""""""
""" KEY COMMANDS """
""""""""""""""""""""
" Unix commands
Plug 'tpope/vim-eunuch'
" Various functionality for bracket keys
Plug 'tpope/vim-unimpaired'
" Automatically add end and such
" Temporarily disabled, interferes with <CR> remapping...
" Plug 'tpope/vim-endwise'
" Easily insert paired HTML/XML tags, and more
Plug 'tpope/vim-ragtag'

""""""""""""""""""""
""" TEXT OBJECTS """
""""""""""""""""""""
" Support for declaring text objects, dependency
Plug 'kana/vim-textobj-user'
" JavaScript blocks
Plug 'haya14busa/vim-textobj-function-syntax'

"""""""""""""""""""""""""""""""""""
""" LANGUAGE/FRAMEWORK SPECIFIC """
"""""""""""""""""""""""""""""""""""

""""""""""""""""""
""" RUBY/RAILS """
""""""""""""""""""
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
" Quickly convert Ruby block formats
Plug 'jgdavey/vim-blockle'
" Inline syntax support; vim-ruby-heredoc-syntax depends on this
Plug 'Shougo/context_filetype.vim'
" CoffeeScript support (vim-ruby-heredoc-syntax expects it)
Plug 'kchmck/vim-coffee-script'
" Better Ruby heredoc support, with inline syntax
Plug 'joker1007/vim-ruby-heredoc-syntax'

""""""""""""""""""
""" TYPESCRIPT """
""""""""""""""""""
Plug 'HerringtonDarkholme/yats.vim'

""""""""""""""""""
""" JAVASCRIPT """
""""""""""""""""""
Plug 'pangloss/vim-javascript'

"""""""""""
""" JSX """
"""""""""""
Plug 'mxw/vim-jsx'

""""""""""""""""""""""
""" HAML/SASS/SCSS """
""""""""""""""""""""""
Plug 'tpope/vim-haml'

""""""""""""""""""""""
""" ELIXIR/PHOENIX """
""""""""""""""""""""""
Plug 'elixir-lang/vim-elixir'
Plug 'avdgaag/vim-phoenix'
" alchemist-server integration
Plug 'slashmili/alchemist.vim'

"""""""""""""""
""" CRYSTAL """
"""""""""""""""
Plug 'rhysd/vim-crystal'

""""""""""""
""" RUST """
""""""""""""
Plug 'wting/rust.vim'

"""""""""""""""""
""" VIMSCRIPT """
"""""""""""""""""
" Vim debug tools
Plug 'tpope/vim-scriptease'

"""""""""""""""""""""""
""" MAYBE RESURRECT """
"""""""""""""""""""""""
" " Move buffers between windows
" Plug 'wesQ3/vim-windowswap'
" " Text object for indent levels
" Plug 'michaeljsmith/vim-indent-object'

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
set wildmode=full

" Case insensitive ex command file completion
set wildignorecase

" Case-sensitive only if pattern includes an uppercase letter
set ignorecase
set smartcase

" Title is root directory of project
set title
set titlestring=%(%{fnamemodify(getcwd(),\ ':t')}%)

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

" Start searching while typing
set incsearch

" Show bad whitespace, toggleable
set list
set listchars=tab:>-,trail:·
nmap <silent> <leader>l :set nolist!<CR>

" Shorten various Vim messages
set shortmess=atIOc

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
silent! set scroll=10

" Always show status line
set laststatus=1

" Load wal-generated colors
set termguicolors
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Have vim always use bash; we might be using fish or something
set shell=/bin/bash

set guifont=PragmataPro\ Mono\ Liga:h10.5

" Source other customizations
for f in split(glob('~/.config/nvim/rc/*.vim'), '\n')
  exe 'source' f
endfor
