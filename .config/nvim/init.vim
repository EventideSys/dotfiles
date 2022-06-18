
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'commit': 'ddf596e387a83476c4c4adceec332279f95381b4'} " {'branch': 'release'}
Plug 'sheerun/vim-polyglot', {'commit': '38282d58387cff48ac203f6912c05e4c8686141b'}
" Plug 'valloric/youcompleteme'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


Plug 'preservim/nerdtree', {'commit': 'eed488b1cd1867bd25f19f90e10440c5cc7d6424'}
Plug 'ryanoasis/vim-devicons', {'commit': 'a2258658661e42dd4cdba4958805dbad1fe29ef4'}
Plug 'lukas-reineke/indent-blankline.nvim', {'commit': '6177a59552e35dfb69e1493fd68194e673dc3ee2'}
Plug 'nvim-lua/plenary.nvim', {'commit': '54b2e3d58f567983feabaeb9408eccf6b7f32206'}
Plug 'nvim-telescope/telescope.nvim', {'commit': 'd3aad43b3fcf707052f7dd8a7c7072fa69773f3c'}

Plug 'edluffy/hologram.nvim', {'commit': '7bd3ffb073dde94c8d86c1b49c47ef9d2f2bc605'}
Plug 'ap/vim-css-color', {'commit': '8bf943681f92c81a8cca19762a1ccec8bc29098a'}

" Plug 'jdonaldson/vaxe'


" Plug 'morhetz/gruvbox'
Plug 'liuchengxu/space-vim-dark', {'commit': 'd24c6c27b49c1ab49416a47d96979481281f53b5'}


" List ends here. Plugins become visible to Vim after this call.
call plug#end()


nmap <C-b> :NERDTreeToggle<CR>
" let NERDTreeMapOpenInTab='<ENTER>'

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


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


set number relativenumber
set hidden

set nobackup
set nowritebackup

"set expandtab
"set tabstop=4
set tabstop=4 shiftwidth=4 expandtab



"   Range:   233 (darkest) ~ 238 (lightest)
"   Default: 235
let g:space_vim_dark_background = 234

colorscheme space-vim-dark
hi Comment cterm=italic
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59

"hi Normal     ctermbg=NONE guibg=NONE
"hi LineNr     ctermbg=NONE guibg=NONE
"hi SignColumn ctermbg=NONE guibg=NONE

