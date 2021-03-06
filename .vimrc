set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'gmarik/Vundle.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar' " Requires http://ctags.sourceforge.net/
Plug 'tpope/vim-surround'
Plug 'sjl/gundo.vim'
Plug 'fatih/vim-go'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'udalov/kotlin-vim'
Plug 'hashivim/vim-terraform'
Plug 'Matt-Deacalion/vim-systemd-syntax'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"""""Colour schemes""""
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'tomsik68/vim-crystallite'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'jpo/vim-railscasts-theme'
Plug 'bounceme/highwayman'
Plug 'jdsimcoe/basal.vim'
Plug 'gummesson/stereokai.vim'
Plug 'vim-scripts/sift'
Plug 'lanox/lanox-vim-theme'
Plug 'acoustichero/simple_dark'
Plug 'shaond/vim-guru'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/burnttoast256'
Plug 'noahfrederick/vim-hemisu'
Plug 'changyuheng/color-scheme-holokai-for-vim'
Plug 'eduardoHoefel/matrix.vim'
Plug 'pkukulak/idle'
Plug 'Elle518/Duna'
Plug 'Valloric/vim-valloric-colorscheme'
Plug 'aperezdc/vim-elrond'
Plug 'geetarista/ego.vim'
Plug 'tpope/vim-projectionist'


call plug#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""Use RG/AG if available""""""""""""""""""""""""""""""""""

if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'
  let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
  let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""""""""""""SETTINGS""""""""""""""""""""""""""""""""""
let g:ranger_replace_netrw = 1 " Use ranger when vim opens a directory

let g:jsx_ext_required = 0
set t_Co=256

syntax enable
let g:deoplete#enable_at_startup = 1
set background=dark
set ttimeoutlen=50
set tabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber
set cursorline
set laststatus=2
let g:airline_powerline_fonts = 1
set updatetime=250
let g:auto_save = 1

set undofile
set undodir=~/.vim/undodir
:silent call system('mkdir -p ' . &undodir)


"""""""""""""""""""""""""My favourite colour schemes"""""""""""""""""""""""""

colorscheme basal
" Preserve terminal background
highlight Normal ctermbg=none
highlight NonText ctermbg=none

"""""""""""""""""""""""""KEY BINDINGS""""""""""""""""""""""""""""""
let mapleader = " "
let g:ranger_map_keys = 0


noremap <silent> <Leader>r :Ranger<CR>
noremap <silent> <Leader>f :FZF<CR>
noremap <silent> <Leader>t :TagbarToggle<CR>
noremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""""""""""""""""" AUTO COMMANDS """"""""""""""""""""""""""""

autocmd InsertLeave * :GitGutterAll

"""""""""""""""""" TAGS """""""""""""""""""""""""
" GROOVY
let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'c:class',
        \ 'i:interface',
        \ 'f:function',
        \ 'v:variables',
    \ ]
\ }
