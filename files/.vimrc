" An example for a vimrc file.
"
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last change:  2019 Jan 26
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"             for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"           for OpenVMS:  sys$login:.vimrc

" download vim-plug if missing 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'shumphrey/fugitive-gitlab.vim'
  Plug 'FrostyX/vim-fugitive-pagure'
  Plug 'psf/black'
  Plug 'dense-analysis/ale'
  Plug 'rust-lang/rust.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/tagbar'
  Plug 'KabbAmine/zeavim.vim'
call plug#end()

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile        " keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

set t_Co=256
set termguicolors
set number
set tw=792034
set cc=80
set nobackup
set noswapfile
set noundofile
set background=dark
set clipboard^=unnamed,unnamedplus
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set ttyfast

map <F12> :ALEToggle<CR>
map <TAB> :bnext<CR>
map <S-TAB> :bprevious<CR>

" ==== custom macros ====
" Delete a function call. example:  floor(int(var))
"         press when your cursor is       ^        results in:
"                                   floor(var)
map <C-H> ebdw%x<C-O>x
nnoremap gp `[v`]

" ALE
let g:ale_max_signs = 0
let g:ale_fix_on_save = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let b:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'python': ['black'],
\}
let b:ale_linters = {
\    'python': ['flake8'],
\}
let g:ale_open_list = 'on_save'
let g:ale_set_loclist = 1
let g:ale_list_window_size = 3

" Close window when buffer closes
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END