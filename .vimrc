" Plugins

call plug#begin()

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
	Plug 'SirVer/ultisnips'
endif

call plug#end()

" Some preferences
inoremap jj <ESC>
let mapleader = "'"

filetype plugin on
filetype indent on
set encoding=utf8
set tabstop=4
set shiftwidth=4

highlight Folded ctermbg=Black ctermfg=Blue

set number
set nu rnu
syntax on
set noswapfile
set hlsearch
set ignorecase
set incsearch

" LaTeX preferences
let g:Imap_FreezeImap=1
autocmd Filetype tex setlocal nofoldenable
let g:tex_flavor='latex'

set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=NONE

" Snippets preferences
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" Deoplete preferences
let g:deoplete#enable_at_startup = 1
highlight Pmenu ctermbg=Grey

