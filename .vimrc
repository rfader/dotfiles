" Rasmus Faddersbøll

runtime! debian.vim

set nocompatible

set title          " the title of the window will be set to the value of: filename [+=-] (path) - VI - VIM
"set relativenumber " show the line number relative to the line with the cursor
set laststatus=2   " enable the status bar to always show
set ruler          " Show the line and column number of the cursor position, separated by a comma.
set showmode " Show the current mode
set smartcase      " Do smart case matching
set scrolloff=3 " Start scrolling three lines before the horizontal window border
set shortmess=atI " Disable the intro message when starting Vim
set noerrorbells " Disable error bells
set mouse=a " Enable mouse in all modes

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Colors {{{
syntax enable " enable syntax processing
syntax on
set t_Co=256 " let vim know we supprt 256 colors

set background=dark
"colorscheme jellybeans
"colorscheme molokai
colorscheme brogrammer
"colorscheme monokai
"colorscheme solarized
" }}}
" Fonts {{{
set guifont=Source\ Code\ Pro\ Light:h12
set antialias " smooth fonts
set encoding=utf-8 nobomb " use UTF-8 everywhere without BOM
" }}}
" Misc {{{
set ttyfast " faster redraw
set backspace=indent,eol,start
set gdefault " Add the g flag to search/replace by default
set esckeys " Allow cursor keys in insert mode
set clipboard=unnamed " Use the OS clipboard by default (on versions compiled with `+clipboard`)
" }}}
" Searching {{{
set ignorecase " ignore case when searching
set incsearch  " search as characters are entered
set hlsearch   " Highlight search results
" }}}
" Spaces & Tabs {{{
set autoindent
set tabstop=4 " how many spaces a tab char counts for, on file open
set softtabstop=4 " how many spaces a tab char counts for, while editing
set shiftwidth=4
set smarttab          " make 'tab' insert indents instead of tabs at the beginning of a line
set expandtab         " always uses spaces instead of tab characters
set modeline
set modelines=4 " check the final line of the file for a modeline
" set breakindent       " Make word wrapping behave like it does in every other sane text editor
filetype on        " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugin

autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab

" }}}
" UI Layout {{{
set number " show line numbers
set showcmd " the bottom line in your editor will show you last command entered
set cursorline     " highlight the screen line of the cursor with CursorLine
" set nocursorline " huh?
set wildmenu          " visually autocomplete the command menu
" set lazyredraw        " only redraw screen when we need to
set showmatch " highlight matching parenthesis
set smartindent
" }}}
" Searching {{{
set ignorecase " ignore case when searching
set incsearch " search as characters are entered
set hlsearch  " highlight all matches
" }}}
" Folding {{{
set foldenable " enable folding
set foldlevelstart=10 " only very nested blocks of code will be folded when opening a buffer
set foldnestmax=10 " max number of folds, we don't need more, unless we are in JS callback hell
set foldmethod=indent " fold based on indent level (other values: marker, manual, expr, syntax, diff - or check :help foldmethod)

" space open/closes folds
nnoremap <space> za
" }}}
" Line Shortcuts {{{
" move vertically by visual line, if a line is wrapped in two lines
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]
" }}}
" Leader Shortcuts {{{
let mapleader="," " replaces \ as leader, with comma

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" turn off search highlight, with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" save session, reopen with 'vim -S'
nnoremap <leader>s :mksession<CR>

nnoremap <leader>w :NERDTree<CR>
nnoremap <leader>u :GundoToggle<CR>
" }}}
" Search {{{
set runtimepath^=~/.vim/bundle/ag.vim

" open ag.vim
nnoremap <leader>a :Ag
" }}}
" CtrlP {{{
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_match_window = 'bottom,order:ttb' " order matching files top to bottom with ttb
let g:ctrlp_switch_buffer = 0 " always open files in new buffers
let g:ctrlp_working_path_mode = 0 " change the working directory during a Vim session and make CtrlP respect that change
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " make CtrlP faster by leveraging ag
" }}}
" Powerline {{{
set runtimepath^=~/.vim/bundle/vim-airline

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
set laststatus=2
" }}}
" NERDTree {{{
set runtimepath^=~/.vim/bundle/nerdtree

let NERDTreeChDirMode=2
let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
" }}}
" Syntastic {{{
set runtimepath^=~/.vim/bundle/syntastic

" let g:syntastic_python_flake8_args='--ignore=E501'
" let g:syntastic_ignore_files = ['.java$']

" let g:statline_syntastic = 0

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
" let g:syntastic_javascript_eslint_exe = '[ -f $(npm bin)/eslint ] && $(npm bin)/eslint || eslint'
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

" let g:syntastic_debug = 33
" " }}}
" Indent Guides {{{
set runtimepath^=~/.vim/bundle/vim-indent-guides

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=237
" }}}
" MacVim {{{
set guioptions-=r
set guioptions-=L
" " }}}
" Tmux {{{
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" Autogroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
" }}}
" Backups {{{
" backup/persistance settings
"set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup/
set directory=~/.vim/tmp/swap/
set backupskip=/tmp/*,/private/tmp/*
set backup
set writebackup
" set noswapfile

" Persist (g)undo tree between sessions
"set undofile
"set history=100
"set undolevels=100
" }}}
" Custom Functions {{{
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc


" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.

function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" Function to trim trailing whitespace on save {{{
function! TrimWhiteSpace()
	%s/\s\+$//e
endfunction

"autocmd BufWritePre *.vimrc *.html *.scss *.js :call TrimWhiteSpace()
autocmd FileType html,vimrc,scss,css,js autocmd BufWritePre <buffer> :call TrimWhiteSpace()
" }}}

" }}}

" Fix for YCM?
"autocmd FileType javascript setlocal omnifunc=tern#Complete

" vim:foldmethod=marker:foldlevel=0

