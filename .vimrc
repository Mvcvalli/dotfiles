" GENERAL
filetype plugin on                 " Enable filetype plugins.
filetype indent on                 " Enable filetype plugins.
syntax enable	                   " Enable syntax highlighting.
set encoding=utf-8   	           " UTF-8 all the things.
set wildmenu	                   " Turn on wildmenu.
set mouse=a	                   " Enable mouse usage.
set linebreak                      " Avoid wrapping a line in the middle of a word.
set clipboard^=unnamed,unnamedplus " Use system clipboard.
set background=dark                " Use dark theme.
set viminfo=""		           " Disable .viminfo
set virtualedit=onemore            " Allow for cursor beyond last character.
set shortmess+=I                   " No intro when starting Vim
set equalalways			   " When splitting, always have the windows be 50% the size.
set splitbelow splitright          " Splits open at the bottom and right.
set nobackup nowritebackup         " Disable backups.
set noswapfile 		           " Disable swap files.
set termguicolors 		   " Set term gui colors (most terminals support this)
set t_Co=256                       " Set if term supports 256 colors.
set ttyfast			   " Smoother Vim for some terminals.
set wildoptions=pum		   " Vertical wildmenu

" KEYBINDINGS

" Leader key.
let g:mapleader = "\<Space>"

" Disable Recording & Ex Mode
map q <Nop>
map Q <Nop>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <PageUp> <nop>
map <PageDown> <nop>

" : to ;
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Toogle line numbers
nnoremap <leader>n :set number<CR>

" Toggle spell checking
map <leader>s :setlocal spell! spelllang=en_nz<CR>

" Copies the contents of the entire file to clipboard
nnoremap <leader>ya <esc>:%y+<CR>

" Open .vimrc in a new tab
nnoremap <leader>v <esc>:tabe ~/.vimrc <CR>

" File explorer
nnoremap <C-f> :NERDTreeToggle<CR>

" AUTOCOMMANDS

" Disable automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" ABBREVIATIONS
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev WQ wq
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev c colorscheme

" PLUGINS
call plug#begin()
Plug 'preservim/nerdtree' | Plug 'ryanoasis/vim-devicons'
call plug#end()

