filetype plugin indent on
filetype plugin on

set autoindent
set cc=81
set clipboard=unnamedplus
set cursorline
set expandtab
set hlsearch
set ignorecase
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
set updatetime=100
let mapleader=","

if (has("termguicolors"))
  set termguicolors
endif

" vim-plug

call plug#begin()
  Plug 'adelarsq/image_preview.nvim'
    autocmd VimEnter * lua require("image_preview").setup({})

  Plug 'airblade/vim-gitgutter'

  Plug 'danymat/neogen'
    autocmd VimEnter * lua require'neogen'.setup()
    nnoremap <silent> <leader>nf :lua require'neogen'.generate()<CR>

  Plug 'github/copilot.vim'
    autocmd VimEnter * :Copilot disable

  Plug 'honza/vim-snippets'

  Plug 'joshdick/onedark.vim'

  Plug 'mfussenegger/nvim-dap'

  Plug 'mhinz/vim-startify'
    autocmd VimEnter * let g:startify_custom_header =
      \ startify#pad(split(system('figlet -w 80 -f Isometric1 NVIM && echo'), '\n'))
    let g:startify_fortune_use_unicode = 1
    let g:startify_center = 1

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
    source $HOME/.config/nvim/coc.vim

    if has('nvim')
      inoremap <silent><expr> <c-space> coc#refresh()
      inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    else
      inoremap <silent><expr> <c-@> coc#refresh()
    endif

  Plug 'norcalli/nvim-colorizer.lua'
    autocmd VimEnter * lua require'colorizer'.setup()

  Plug 'nvim-lua/plenary.nvim'

  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>

  Plug 'nvim-tree/nvim-tree.lua'
    autocmd VimEnter * lua require'nvim-tree'.setup()

    nnoremap <C-n> :NvimTreeFocus<CR>
    nnoremap <C-t> :NvimTreeToggle<CR>
    nnoremap <C-f> :NvimTreeFindFile<CR>

    " Start nvim-tree.lua on startup unless a file or session is specified

    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | Startify | NvimTreeFocus | endif

  Plug 'nvim-tree/nvim-web-devicons'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  Plug 'preservim/nerdcommenter'
    let g:NERDSpaceDelims = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDCommentEmptyLines = 1

  Plug 'rhysd/vim-wasm', { 'for': 'wat' }

  Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

  Plug 'Soares/base16.nvim'

  Plug 'stevearc/dressing.nvim'

  Plug 'tpope/vim-fugitive'

  Plug 'tpope/vim-surround'

  Plug 'vim-airline/vim-airline'
    let g:airline_theme='transparent'
    let g:airline#extensions#nerdtree_statusline=0

  Plug 'vim-airline/vim-airline-themes'

  Plug 'wakatime/vim-wakatime'

  Plug 'xiyaowong/transparent.nvim'

  Plug 'ziontee113/icon-picker.nvim'
    autocmd LspAttach * lua require'icon-picker'.setup({ disable_legacy_commands = true })

    nnoremap <silent> <leader><leader>i :IconPickerNormal<cr>
    nnoremap <silent> <leader><leader>y :IconPickerYank<cr>
    inoremap <silent> <C-i> :IconPickerInsert<cr>

call plug#end()

syntax on
colorscheme onedark

nnoremap <silent> <C-l> :nohl<CR>
nnoremap <C-w>t :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" nvim-tree additional configuration

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

lua << EOF
  require 'nvim-treesitter.configs'.setup {
    auto_install = true,
    highlight = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  }

  require 'dap'.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      command = "codelldb",
      args = { "--port", "${port}" },
    },
  }
EOF
