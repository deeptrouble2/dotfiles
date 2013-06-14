set nocompatible
call pathogen#infect()
call pathogen#helptags()
set wmh=0
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
nnoremap <silent> <F8> :Tlist<CR>
inoremap kj <Esc>
syntax on
"Newly added below
set nocp
filetype indent plugin on
filetype on
filetype plugin on
set hidden
set wildmenu
set showcmd
set backspace=indent,eol,start
set undofile
set undodir=/home/deepak/.vimundo
"Newly added above ^^^
set ignorecase
set hlsearch
hi search term=bold ctermfg=white ctermbg=6
set incsearch
set expandtab
set autoindent
set smartindent
set copyindent
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4               " let backspace delete indent

"no backups
"set noswapfile
"set nobackup
"set nowb

"Prevent omni complete preview window
set completeopt-=preview
set background=dark
"colorscheme molokai
"let g:zenburn_old_Visual = 1
"let g:zenburn_high_Contrast = 0
"let g:zenburn_alternate_Visual = 1
let g:zenburn_transparent = 1
let g:yankring_history_dir = "~/.vim/"

"colorscheme zenburn
"colorscheme darkburn
"colorscheme mustang
"set background=dark
"let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visbility="high"
colorscheme jellybeans
set viminfo='100,f1
autocmd FileType python set omnifunc=pythoncomplete#Complete
"Show tabs and spaces
"set list listchars=tab:-\
"set listchars=trail:.
set list listchars=tab:▸.,trail:.,extends:#,nbsp:.
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
" option to stop auto-indent when copy-pasting from one window to another
set pastetoggle=<F6>
:vnoremap < <gv
:vnoremap > >gv
command -nargs=* Ma !make TARGET=ap7131 <args>
"command -nargs=* Ma silent execute "!make TARGET=ap7131 <args> > /dev/null" | redraw!
command -nargs=* Mf !make TARGET=qs1 <args>

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END

" // The switch of the Source Explorer
nmap <F9> :SrcExplToggle<CR>
nmap <F10> :CCTreeTraceReverse<CR>
nmap <F11> :CCTreeLoadDB<CR>

" // Set the window height of Source Explorer
let g:SrcExpl_winHeight = 12

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 500

" // Let the Source Explorer update the tags file when opening
"let g:SrcExpl_updateTags = 1

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
"let g:SrcExpl_gobackKey = "<SPACE>"

" // Do not let the Source Explorer update the tags file when opening          "
let g:SrcExpl_isUpdateTags = 0
"                                                                              "

"Grep plugin settings
:let Grep_Path = '/bin/egrep'
:let Grep_Default_Options = '--exclude-from ~/.sgrep-exclude -ir'

"More new stuff : Aug 2012
let mapleader=","
set smartcase
"set title
set history=1000
nnoremap ; :
nnoremap j gj
nnoremap k gk
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

nmap <silent> <Leader>l :TagbarToggle<CR>
nmap <silent> <Leader>s :SrcExplToggle<CR>
nnoremap <silent> <Leader>y :YRShow<CR>
"nnoremap <silent> <leader><space> :noh<CR>
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"
map <leader>p :setlocal paste!<cr>
nnoremap <silent> <Leader>/ :nohlsearch<CR>
nnoremap <silent> <Leader>g :GundoToggle<CR>
map <leader>m :make! TARGET=qs1 NOISY=1<cr><cr>
map <leader>a :make! TARGET=qs1 tags<cr><cr>
map <leader>t :CtrlP<cr>
map <leader>q :ccl<cr>

set encoding=utf-8
set laststatus=2
au FilterWritePre * if &diff | set laststatus=0 | endif
let g:tagbar_left = 1
"let g:Powerline_symbols = 'unicode'
let g:Powerline_mode_n = ' N '
let g:Powerline_mode_i = ' I '
let g:Powerline_mode_v = ' V '
let g:Powerline_color = ' V '
let SVNCommandEnableBufferSetup=1
"let g:loaded_fugitive = 1
"au BufWritePost *.c,*.cpp,*.h silent! !make TARGET=qs1 tags&
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
"set cursorline
cmap w!! w !sudo tee % >/dev/null
set switchbuf=usetab
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
"set autochdir
"autocmd BufEnter * silent! lcd %:p:h
set errorformat^=%-GIn\ file\ included\ %.%# 

hi TabLineFill ctermfg=white ctermbg=DarkGrey
hi TabLine ctermfg=White ctermbg=Grey
hi TabLineSel ctermfg=Black ctermbg=White
let g:ctrlp_working_path_mode = "a"
set switchbuf=usetab,newtab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
