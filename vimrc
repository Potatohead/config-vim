call pathogen#infect() 

:syntax enable
set tabstop=2
set softtabstop=2
set shiftwidth=2
" I like 80 width
set textwidth=80
set smarttab
set expandtab
set smartindent
set autoindent
set number
setlocal wrap
setlocal backspace=indent,eol,start
set bg=dark
set ruler
set ignorecase
set smartcase
map \t :tabnew<cr>
map \n :tabnext<cr>
map \p :tabprevious<cr>
map \c :tabclose<cr>
set wildmode=list:longest,list:full

set t_Co=256

" This is for colour scheme
" colorscheme desert256
" colorscheme zenburn
colorscheme wombat256

"If using g/vim 7.3 turn on the color column
" if exists('+colorcolumn') 
"    set cc=+1
"    hi ColorColumn ctermbg=lightmagenta
" endif


filetype plugin on
filetype indent on
" Folding configuration
set foldmethod=syntax

" Always show status bar
set laststatus=2

" Override status lne
" full path, modified [+], readonly [RO], help buffer [help], preview flag
" [Preview], file format, what filetype vim detected, position in chars,
" position as %, length in lines
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [LEN=%L]

" Edit and uncommet the next line if you want non-default marker
" set foldmarker="{{{,}}}"

" mapping for winmanager
" map <F2> :WMToggle<CR>
" map <F2> :call ToggleShowOpsplorer()<CR>
map <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> <ESC>:NERDTreeToggle<CR>

" This is for taglist
map <F3> :Tlist<CR>

" opens a buffer switcher in this window
" map <F4> :MiniBufExplorer<CR>

" enable and disable numbering
map <F5> :set nu!<Bar>set nu?<CR>

" Spelling
set spelllang=en_au
map <silent> <F6> :setlocal invspell<Bar>setlocal invspell?<CR>
imap <silent> <F6> <ESC>:setlocal invspell<Bar>setlocal invspell?<CR>

" Enable and disable indenting.
" Haven't gotten this down to 1 key as I can't find a way to invert indentexpr
" map <silent> <F7> :setlocal noai nocin nosi inde=<Bar>setlocal noai?<CR>
" imap <silent> <F7> <ESC>:setlocal noai nocin nosi inde=<Bar>setlocal noai?<CR>
set pastetoggle=<F7>

map <silent> <F8> :set noai< nocin< nosi< inde<<Bar>setlocal noai?<CR>
imap <silent> <F8> <ESC>:set noai< nocin< nosi< inde<<Bar>setlocal noai?<CR>

"Getting sick of hitting the movement keys and its just typing, so making
"repitions of the keys escape out of insert. If I find myself getting annoyed by
"escapes that weren't intended I'll want to make the repetions longer
imap <silent> jjj <ESC>
imap <silent> hhh <ESC>
imap <silent> kkk <ESC>
imap <silent> lll <ESC>

"perl syntax stuff
let perl_fold=1
let perl_fold_blocks=1
let perl_include_pod=1
"let perl_want_scope_in_variables=1
"let perl_extended_vars=1

set foldlevelstart=99

augroup filetypedetect
autocmd! BufNewFile,BufRead *.epl,*.phtml setf embperl
augroup END

autocmd BufNewFile,BufRead *.epl,*.phtml colorscheme embperl_yellow

match ErrorMsg '\%80v.\{0,3}'
