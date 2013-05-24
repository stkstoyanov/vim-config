"Initialize pathogen
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on

syntax on
set foldmethod=syntax
" Fold focus around a single fold
nnoremap zs zMzv

let mapleader=','

" Remove gui options for gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

"------------------------------------------------------------------------------
" TAB CONTROLS
"------------------------------------------------------------------------------

" Always display tabs
set showtabline=2
nnoremap tl :tabnext<CR>
nnoremap th :tabprevious<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
" Display tab numbers in gvim
set guitablabel=%N:%M%t
" Modify the tab label for vim
set tabline=%!TabLine()

" Taglist options
let Tlist_Use_Left_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=32
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
nmap <Leader><Leader>t :Tlist<cr>

" Put swap files in /tmp file in the home directory
set backupdir=~/.tmp
set directory=~/.tmp

nnoremap ; :
nnoremap ;; ;
vnoremap ; :
vnoremap ;; ;

set clipboard+=unnamedplus

" Indents
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Don't indent class scope declarations
set cino+=g0
" Align parentheses
set cino+=(0
" Remove indent for namespaces
set cino+=N-s

" Indent mappings
noremap <Tab> >>
noremap <S-Tab> <<

" Enable search highlighting
set hlsearch
" Clear search query
nnoremap <silent> <Leader><Leader>c :let @/ = ''<CR>

" Configure basic theme settings
set t_Co=256
colorscheme molokai
set guifont=Inconsolata\ 11
" Horizontal column
set colorcolumn=80
hi ColorColumn ctermbg=234
" Hide the tilde line symbol
hi NonText ctermfg=bg
hi NonText guifg=bg
" A more useful matching parenthesis highlighting
hi MatchParen cterm=none ctermbg=none ctermfg=166
" Remove the startup text
set shortmess+=I

" Display a number of lines below or above the current line
set scrolloff=8

set textwidth=80

" Automatically read a file that has changed on disk
set autoread

" -----------------------------------------------------------------------------
" WINDOWS
" -----------------------------------------------------------------------------

" Move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
vnoremap <C-h> <Esc><C-w>hv
vnoremap <C-k> <Esc><C-w>kv
vnoremap <C-l> <Esc><C-w>lv
" Move windows
nnoremap <C-w>h <C-w><S-h>
nnoremap <C-w>j <C-w><S-j>
nnoremap <C-w>k <C-w><S-k>
nnoremap <C-w>l <C-w><S-l>
vnoremap <C-w>h <Esc><C-w><S-h>v
vnoremap <C-w>j <Esc><C-w><S-j>v
vnoremap <C-w>k <Esc><C-w><S-k>v
vnoremap <C-w>l <Esc><C-w><S-l>v
inoremap <C-w>h <C-o><C-w><S-h>
inoremap <C-w>j <C-o><C-w><S-j>
inoremap <C-w>k <C-o><C-w><S-k>
inoremap <C-w>l <C-o><C-w><S-l>
" Maximize window
nnoremap <silent> <C-w>m :MaximizerToggle<CR>
vnoremap <silent> <C-w>m :MaximizerToggle<CR>gv
inoremap <silent> <C-w>m <C-O>:MaximizerToggle<CR>

" -----------------------------------------------------------------------------
" INSERT MODE EDITING
" -----------------------------------------------------------------------------

" Insert movement
imap <C-h> <C-o>I
imap <C-j> <C-o>o
imap <C-k> <C-o>O
imap <C-l> <C-o>A

" Delete
inoremap <C-D> <Del>

" Allow switching between buffers without saving
set hidden

" Improved command-line tab completion
set wildmenu

" Always display the status line
set laststatus=2

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Remove separator characters
set fillchars=""

" Paste toggle for preserving indentations
set pastetoggle=<F2>

" Line numbers
set relativenumber
" Toggle relative numbers
nnoremap <silent> <F3> :exec &nu == 0 ? 'set nu!' : 'set rnu!'<CR>

" Insert empty lines before and after without going into insert mode
nnoremap <A-k> :normal O<CR>j
nnoremap <A-j> :normal o<CR>k

set conceallevel=2
set concealcursor=vin
set completeopt=menu,menuone

" -----------------------------------------------------------------------------
" CLANG_COMPLETE
" -----------------------------------------------------------------------------

let g:clang_use_library=1
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
let g:clang_complete_auto=0
let g:clang_close_preview=1
imap <C-Space> <C-x><C-u>
imap <C-@> <C-Space>
let g:clang_snippets=1
let g:clang_snippets_engine='ultisnips'

" -----------------------------------------------------------------------------
" SYNTASTIC
" -----------------------------------------------------------------------------

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_config_file='.clang_complete'
let g:syntastic_cpp_check_header=1

" -----------------------------------------------------------------------------
" ULTISNIPS
" -----------------------------------------------------------------------------

" UltiSnips mappings
let g:UltiSnipsJumpForwardTrigger='<C-F>'
let g:UltiSnipsJumpBackwardTrigger='<C-B>'
let g:UltiSnipsSnippetsDir='~/.vim/snippets/UltiSnips'
map <Leader><Leader>s <Esc>:call UltiSnips_ListSnippets()<CR>
