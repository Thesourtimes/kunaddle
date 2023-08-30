
"" General setup
set nocompatible
set encoding=utf-8
set textwidth=100
set title
set number
set showmatch
set ruler

let mapleader = "f"

set clipboard=unnamed   " Saves copied text from vim to general clipboard
set clipboard=unnamedplus       " Saves copied text from vim ro general clipboard

set laststatus=3

set showtabline=2       " Show vim tab pages all time

set hlsearch    " Highlight all search results
set smartcase   " Enable smart-case search
set ignorecase  " Always case-insensitive
set nowrap      " Don't wrap the lines
set incsearch   " Searches for strings incrementally
set cursorline
set expandtab

" NERDTree
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <leader>tt :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
nnoremap <leader>dd <cmd> omnifunc<cr>


"" Theme
colorscheme habamax  " Default theme (change here for your preference)
hi Normal guibg=NONE ctermbg=NONE

set showcmd
set cmdheight=2
set wildmenu
set wildmode=list:full


syntax enable
set relativenumber
set linebreak
set visualbell

filetype on
filetype plugin on
filetype indent on

"" Plugin configurations
let g:vimtex_view_method = 'zathura'

" Mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Initialize plug
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

Plug 'dense-analysis/ale'
Plug 'tyru/open-browser.vim' " opens url in browser
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline'
Plug 'mx-moth/linters.vim'
Plug 'lervag/vimtex'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

"" some functions

function! Zathura()
	let fullPath = expand("%:p")
	let pdfFile = substitute(fullPath, ".tex", ".pdf", "")
	execute "silent !zathura '" . pdfFile . "' &"
endfunction

command Zathura :call Zathura()

"" Statusline
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#StatusLineNC#
set statusline+=%F
set statusline+=%m\
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\  
set statusline+=\ TIME:
set statusline+=\ %{strftime('%H:%M')}
