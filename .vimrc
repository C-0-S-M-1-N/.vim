call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'bfrg/vim-cpp-modern'
Plug 'simeji/winresizer'
Plug 'KarimElghamry/vim-auto-comment'
Plug 'adelarsq/Vim-AutoClose'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'uiiaoo/java-syntax.vim'
Plug 'vim-scripts/vcscommand.vim'

Plug 'ryanoasis/vim-devicons'
call plug#end()
"imap <C-n> <Tab>

let g:ale_completion_enabled = 1
let g:clang_library_path='/usr/lib64/libclang-cpp.so.16'
let g:ale_linters = {'cpp' : ['cpplint', 'clangd']}
let g:ale_cpp_cpplint_options='--filter=-legal/copyright,-whitespace,-build/header_guard'
let g:ale_c_cpplint_options=ale_cpp_cpplint_options
let g:ale_java_googe_java_format_executable = '~/.java/bin/google-java-format.jar'
let g:ale_virtualtext_cursor = 'current'
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_completion_symbols={
  \ 'text': '',
  \ 'method': '',
  \ 'function': '',
  \ 'constructor': '',
  \ 'field': '',
  \ 'variable': '',
  \ 'class': '',
  \ 'interface': '',
  \ 'module': '',
  \ 'property': '',
  \ 'unit': 'unit',
  \ 'value': 'val',
  \ 'enum': '',
  \ 'keyword': 'keyword',
  \ 'snippet': '',
  \ 'color': 'color',
  \ 'file': '',
  \ 'reference': 'ref',
  \ 'folder': '',
  \ 'enum member': '',
  \ 'constant': '',
  \ 'struct': '',
  \ 'event': 'event',
  \ 'operator': '',
  \ 'type_parameter': 'type param',
  \ '<default>': 'v'
  \ }
let g:airline_powerline_fonts=1
let g:airline_detect_paste=1
let g:airline_extensions=['branch']
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = 'NOT A GIT REPO'
let g:airline#extensions#branch#use_vcscommand = 1

augroup HoverAfterComplete                                                        
    autocmd!                                                                    
    " display argument list of the selected completion candidate using ALEHover
    autocmd User ALECompletePost ALEHover                                       
augroup END

syntax on
set completeopt=menu,menuone,popup,noselect,noinsert
set relativenumber
set number
set tabstop=4
set smartindent
set autoindent
set directory^=/home/cosmin/.vim/swpfiles//
set title
set ruler
set encoding=UTF-8
set dictionary="/usr/dict/words"
set wildchar=<Tab>
filetype indent on
filetype plugin indent on


" set paste
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


"set omnifunc=cppcomplete#CompleteCPP

" vnoremap <silent><C-/> :AutoInlineComment<CR>
" nnoremap <silent><C-/> :AutoInlineComment<CR>
nmap <C-j> zfa} <CR>

nmap <F4> :silent !make <CR>

"colorscheme dracula
packadd! dracula
colorscheme dracula

