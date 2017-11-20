set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'

" Open/close NERDTree Tabs with 
let NERDTreeDirArrows=0 
" To have NERDTree not open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

Plugin 'kien/ctrlp.vim'

Plugin 'airblade/vim-gitgutter'

" search ctrlp with regex by default
let g:ctrlp_regexp_search = 1
let g:ctrlp_clear_cache_on_exit = 0

Plugin 'itchyny/lightline.vim'

" set lightline to include git-branch
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ,
      \             [ 'venv', 'readonly'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'venv': 'virtualenv#statusline'
      \ },
      \ }

" Always show statusbar
set laststatus=2

Plugin 'w0rp/ale'

" pip install flake8
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}

" ------ jedi-python ------"
Plugin 'davidhalter/jedi-vim'

let g:jedi#popup_on_dot = 0
map <Leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<C-c>

call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
