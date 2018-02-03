" Enable syntax processing
syntax enable

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " 10 nested fold max

" Indenting
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Load filetype-specific indent files
filetype indent on

" Search
set hlsearch            " highlight matches
set incsearch           " search as characters are entered

" UI
set cursorline          " highlight current line
set ruler               " display line and column numbers
set showmatch           " highlight matching [{()}]

" Highlight extra whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
