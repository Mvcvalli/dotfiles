" GENERAL
set encoding=utf-8   	                               " UTF-8 all the things.
set wildmenu	                                       " Turn on wildmenu.
set mouse=a	                                       " Enable mouse usage.
set linebreak                                          " Avoid wrapping a line in the middle of a word.
set clipboard^=unnamed,unnamedplus 		       " Use system clipboard.
set background=dark                		       " Use dark theme.
set viminfo=					       " Disable .viminfo
set virtualedit=onemore            		       " Allow for cursor beyond last character.
set shortmess+=I                   		       " No intro when starting Vim
set equalalways			   		       " When splitting, always have the windows be 50% the size.
set splitbelow splitright          		       " Splits open at the bottom and right.
set nobackup nowritebackup noswapfile         	       " Disable backups + swap files
set wildmenu wildoptions=pum		   	       " Enable wildmenu + vertical wildmenu.
set incsearch hlsearch             		       " Find as you type search + Highlight search terms.
set ignorecase                 	   		       " Case insensitive search.
set gdefault      		   		       " Never have to type /g at the end of search / replace again
set spellfile=$HOME/.vim/spell/.vim-spell-en.utf-8.add " Set spellfile to location that is guaranteed to exist, can be symlinked to
filetype plugin on | filetype indent on | syntax enable

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
nnoremap <silent> <leader>n :set number<CR>

" Toggle spell checking
nnoremap <silent> <leader>s :set spell spelllang=en_nz<CR>

" Copies the contents of the entire file to clipboard
nnoremap <C-y> <esc>:%y+<CR>

" Open .vimrc in a new tab
nnoremap <silent> <C-v> <esc>:tabe ~/.config/vim/.vimrc<CR>

" File explorer
nnoremap <silent> <C-f> :NERDTreeToggle<CR>

" Toggle Goyo
nnoremap <leader><ENTER> :Goyo<CR>

" Toggle spell checking
nnoremap <silent> <C-s> :set spell spelllang=en_nz<CR>

" AUTOCOMMANDS

" Disable automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Fixes transparency issues W/ colorschemes
autocmd VimEnter * TransparentDisable

" Automatically deletes all tralling whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" ABBREVIATIONS
source $HOME/.vim/abbreviations.vim

" PLUGINS
call plug#begin()
Plug 'preservim/nerdtree' | Plug 'ryanoasis/vim-devicons' | Plug 'jiangmiao/auto-pairs' | Plug 'tribela/vim-transparent'
Plug 'junegunn/goyo.vim'  | Plug 'junegunn/limelight.vim' | Plug 'lilydjwg/colorizer'   | Plug 'pgdouyon/vim-yin-yang'
call plug#end()

" GOYO
autocmd! User GoyoEnter Limelight | autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 240 | let g:limelight_conceal_guifg = '#777777'

" NERDTree
let NERDTreeShowHidden=1 " Show hidden files.
let NERDTreeQuitOnOpen=1 " Automaticly close NERDtree after a file has been opened.
let NERDTreeMinimalUI =1 | let NERDTreeDirArrows =1 " Aesthetics.

colorscheme yin
