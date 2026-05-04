" Copyright (c) 2026 Andrei Khomenkov <khomenkov@mailbox.org>
" Licensed under the ISC License. Full text available in the
" LICENSE file at the repository root.

syntax off
set title
set number
set nowrap
set nobackup
set t_Co=256
set smartcase
set incsearch
set noswapfile
set ignorecase
set cursorline
set shortmess+=I
set scroll=10
set scrolloff=5
set sidescroll=1
set sidescrolloff=10
set updatetime=2000
let mapleader = " "
set cursorlineopt=number
set listchars=tab:>-,trail:·
filetype plugin indent on
autocmd CursorHold * echo ""

set tabstop=8
set noexpandtab
set shiftwidth=8
set softtabstop=8

nnoremap <space> <nop>
vnoremap <space> <nop>
nnoremap <silent> <leader>l :call ToggleList()<CR>
nnoremap <silent> <leader>r :call ToggleRulers()<CR>
nnoremap <silent> <leader>h :call ToggleHighlighting()<CR>

function! ToggleRulers()
	if &colorcolumn == ""
		set colorcolumn=81,101
		echo "rulers on"
	else
		set colorcolumn=""
		echo "rulers off"
	endif
endfunction

function! ToggleList()
	if &list
		set nolist
		echo "symbols off"
	else
		set list
		echo "symbols on"
	endif
endfunction

function! ToggleHighlighting()
	if exists("g:syntax_on")
		syntax off
		echo "syntax off"
	else
		syntax on
		echo "syntax on"
	endif
endfunction

hi LineNr       ctermfg=244
hi CursorLineNr ctermfg=250
hi ColorColumn  ctermbg=238
hi NonText      ctermfg=244
hi SpecialKey   ctermfg=244
hi MatchParen   ctermbg=208
