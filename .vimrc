set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4             " width for autoindents
"➜⠀·
set list listchars=tab:➜⠀,space:·
set expandtab

set number                  " add line numbers
filetype plugin indent on   "allow auto-indenting depending on file type syntax on                   " syntax highlighting
" set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on 
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

call plug#begin("~/.vim/plugged")
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'alpertuna/vim-header'
  Plug 'vim-airline/vim-airline'
call plug#end()

let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
"let g:airline_theme='solarized'
let g:header_field_author = 't.me/scamkxd'
" let g:header_field_author_email = 'your@mail'
let g:header_field_filename = 1
let g:header_field_modified_by = 0
let g:header_field_modified_timestamp = 0
let g:header_field_timestamp = 1
let g:header_field_timestamp_format = '%b %d (%d.%m.%y), %H:%M:%S'


nnoremap <C-t> :NERDTreeToggle<CR>

map <F4> :AddHeader<CR>
map <F5> :0r ~/header.txt <CR>
map <F6> :0r ~/header1.txt <CR>
