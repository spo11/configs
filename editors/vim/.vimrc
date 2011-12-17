set number
set nocompatible
filetype plugin on
syntax on
color molokai
set autoindent
set wrap
set linebreak
set t_Co=256
set guifont=Pragmata\ Medium\ 11
" set guifont=Envy\ Code\ R\ 12
" set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hadn scrollbar
" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
nmap <Leader>n :NERDTreeToggle<CR>

" Set Background as Light/Dark Depending on Whether There Is A GUI
" if has('gui_running')
"    set background=light
" else
"    set background=dark
" endif

" Convert Markdown to HTML
" Markdown to HTML  
nmap <leader>md :%!/usr/bin/vendor_perl/Markdown.pl --html4tags <cr></cr></leader>

" For Writing

" autocmd BufRead *\.mkd set textwidth=80
autocmd BufRead *\.mkd set nonumber
autocmd BufRead *\.mkd hi! link FoldColumn Normal
autocmd BufRead *\.mkd set foldcolumn=1
" autocmd BufRead *\.mkd set guioptions-=m
