" Get all plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'deoplete-plugins/deoplete-jedi'
Plug 'dense-analysis/ale'
Plug 'Glench/Vim-Jinja2-Syntax'
call plug#end()


syntax on
filetype plugin indent on
set number

set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

let g:deoplete#enable_at_startup = 1
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

set background=dark

map <leader>nt :NERDTreeToggle<return>
map <leader>gt :YcmCompleter GoToDefinition<return>
map <leader>tb :TagbarToggle<return>

" Deoplete Specific
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:gruvbox_italic=1

colorscheme gruvbox

set cc=80
