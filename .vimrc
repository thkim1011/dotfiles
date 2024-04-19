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
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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

" Ale configuration
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '💡'
let g:ale_sign_info = '💡'
let g:ale_sign_style_error = '💡'
let g:ale_sign_style_warning = '💡'

set cc=80

set mouse=a

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

