set shell=bash
syntax on
set background=dark
colorscheme solarized

" expand tab character to spaces
set expandtab

" tab width
set tabstop=4               " tab size = 4
set shiftwidth=4
set smartindent

" view peripherals
set number                  " line number
set relativenumber
set ruler                   " little ruler 
set hlsearch                " highlight search result
" set cursorline              " highlight cursor line
"
"set laststatus=2
"set statusline=%!getcwd()

" operation
set mouse=c                 " mouse=c to make copy operation easier

" plugins
filetype plugin on          " enable plugins like PEP8 for python
filetype plugin indent on   " ??

" Pathogen: Manage your runtime path (https://github.com/tpope/vim-pathogen)
execute pathogen#infect()
" Tagbar: Browsing tags in source code (https://github.com/majutsushi/tagbar)
nmap <F8> :TagbarToggle<CR>
" Ctags: Tags! (brew install ctags)
set tags=./tags,tags,.git/tags;
" Syntastic: Auto syntax checking (https://github.com/scrooloose/syntastic)
" let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_python_checkers = ['pep8']
let g:syntastic_cpp_compiler_options = '-std=c++11'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map tab Management
" https://www.quora.com/How-do-I-switch-between-tabs-in-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap te  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F7> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Winmanager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWindowLayout="NERDTree|TagList"
let g:NERDTree_title="[Folder]"
let g:NERDTreeMouseMode=3 

"nmap <C-m> :WMToggle<CR>


function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction

function! NERDTree_IsValid()  
    return 1  
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config miniExplorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config TagList 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config vim-go 
" https://github.com/fatih/vim-go
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)



au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)


au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)


au FileType go nmap <Leader>gb <Plug>(go-doc-browser)


au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>e <Plug>(go-rename)


