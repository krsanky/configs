set nu
set ruler
set showmode
set showcmd
set modeline
set bs=2

set expandtab
set tabstop=4
set sts=4
set sw=4

map <C-j> :bprev<CR>
map <C-k> :bnext<CR>

" GOLANG
"https://hackernoon.com/my-neovim-setup-for-go-7f7b6e805876
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'fatih/vim-go'
call plug#end()

"colorscheme koehler
"colorscheme murphy
colorscheme peachpuff
"colorscheme desert

nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

set hidden

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
let g:python_recommended_style = 0
autocmd BufNewFile,BufRead *.py setlocal expandtab tabstop=4 shiftwidth=4

au BufNewFile,BufRead *.html set filetype=htmldjango





