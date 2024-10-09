filetype plugin indent on
filetype plugin on

set autoindent
set cc=81
set clipboard=unnamedplus
set cursorline
set expandtab
set hlsearch
" set ignorecase
set incsearch
set mouse=a
set nocompatible
set number
set shiftwidth=2
set showmatch
set softtabstop=2
set tabstop=2
set splitbelow
set splitright
set ttyfast
set wildmode=longest,list

if (has("termguicolors"))
  set termguicolors
endif

" vim-plug

call plug#begin()
  Plug 'github/copilot.vim'
  Plug 'honza/vim-snippets'
  Plug 'joshdick/onedark.vim'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'PhilRunninger/nerdtree-visual-selection'
  Plug 'preservim/nerdcommenter'
  Plug 'rhysd/vim-wasm', { 'for': 'wat' }
  Plug 'rust-lang/rust.vim', { 'for': 'rust' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'sbdchd/neoformat'
  Plug 'scrooloose/nerdtree'
  Plug 'SirVer/ultisnips'
  Plug 'Soares/base16.nvim'
  Plug 'stevearc/dressing.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'wakatime/vim-wakatime'
  Plug 'xiyaowong/transparent.nvim'
  Plug 'ziontee113/icon-picker.nvim'
call plug#end()

syntax on
colorscheme google

" === Startify

let g:startify_custom_header =
  \ startify#pad(split(system('figlet -w 100 -f Isometric1 NVIM && echo'), '\n') + startify#fortune#cowsay())


" === COC

source $HOME/.config/nvim/coc.vim

" hi link CocFloating Normal

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" === telescope.nvim

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" === neoformat

let g:neoformat_enabled_c = ['clang-format']
let g:neoformat_enabled_cpp = ['clang-format']
let g:neoformat_enabled_python = ['black']
let g:neoformat_enabled_rust = ['rustfmt']

" Format on save

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" === NERDTree

let NERDTreeShowHidden=1

" NERDTree mappings

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | wincmd p | Startify | endif

" nerdtree-visual-selection

let g:nerdtree_vis_confirm_open=0
let g:nerdtree_vis_confirm_delete=0
let g:nerdtree_vis_confirm_copy=0
let g:nerdtree_vis_confirm_move=0

" === UltiSnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Theme

let g:onedark_terminal_italics=1

" let g:base16_transparent_background=1

" === Airline

let g:airline_theme='transparent'
let g:airline#extensions#nerdtree_statusline=0

lua require'colorizer'.setup()

" === icon-picker

lua require'icon-picker'.setup({ disable_legacy_commands = true })

nnoremap <silent> <leader><leader>i :IconPickerNormal<cr>
nnoremap <silent> <leader><leader>y :IconPickerYank<cr>
inoremap <silent> <C-i> :IconPickerInsert<cr>
