" NeoBundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'

" ------------------------------------
"	Gzmask's Awesome PLUGINS
" ------------------------------------

" ... All plugins below:
NeoBundle 'scrooloose/nerdtree'  
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'losingkeys/vim-niji'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/paredit.vim'
NeoBundle 'tomlion/vim-solidity'
NeoBundle 'scrooloose/syntastic'

" ...
call neobundle#end()  
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------

filetype off
filetype plugin indent on

set cuc cul
hi CursorColumn ctermbg=17
hi CursorLine cterm=none ctermbg=17

let mapleader = ","
set ruler
set number
set incsearch
set ignorecase
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
nmap <leader>j <C-w>j
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>k <C-w>k
