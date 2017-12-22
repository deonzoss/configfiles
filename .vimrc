set clipboard=unnamed
set noshowmode
set number
syntax on

inoremap jk <Esc>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-e> :SyntasticToggleMode<CR>
if has("autocmd")
  filetype plugin indent on
  autocmd Filetype make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set mouse=a

execute pathogen#infect()
filetype plugin indent on
set colorcolumn=206

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:NERDTreeDirArrowExpandable = '▹'
let g:NERDTreeDirArrowCollapsible = '▿'
let NERDTreeShowHidden=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

function! AirlineInit()
    call airline#parts#define_raw('linenr', '%l')
    call airline#parts#define_accent('linenr', 'bold')
    let g:airline_section_z = airline#section#create(['%3p%% ',' ', 'linenr', ':%c'])
endfunction


let g:airline_powerline_fonts = 1
let g:airline_theme='kolor'
let g:airline#extensions#whitespace#symbol = 'Ξ'
autocmd User AirlineAfterInit call AirlineInit()

let rand = system('echo $RANDOM')%2

if (rand==0)
  let g:airline_theme='kolor'
else
  let g:airline_theme='molokai'
endif




