
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'valloric/youcompleteme'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jdonaldson/vaxe'


Plug 'morhetz/gruvbox'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


nmap <C-b> :NERDTreeToggle<CR>

set number
set hidden

set nobackup
set nowritebackup

"set expandtab
"set tabstop=4
set tabstop=4 shiftwidth=4 expandtab

colorscheme gruvbox

