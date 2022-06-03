
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" Plug 'valloric/youcompleteme'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'edluffy/hologram.nvim'


" Plug 'jdonaldson/vaxe'


Plug 'morhetz/gruvbox'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


nmap <C-b> :NERDTreeToggle<CR>
" let NERDTreeMapOpenInTab='<ENTER>'


nnoremap <C-g> <cmd>Telescope buffers<cr>



" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


set number
set hidden

set nobackup
set nowritebackup

"set expandtab
"set tabstop=4
set tabstop=4 shiftwidth=4 expandtab

colorscheme gruvbox

