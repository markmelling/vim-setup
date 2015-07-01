filetype off                    " from http://stevelosh.com/blog/2010/09/coming-home-to-vim
call pathogen#incubate() " from http://stevelosh.com/blog/2010/09/coming-home-to-vim

filetype plugin indent on " from http://stevelosh.com/blog/2010/09/coming-home-to-vim
set modelines=0 " from http://stevelosh.com/blog/2010/09/coming-home-to-vim
set nocp
call pathogen#infect()
set nocompatible                " choose no compatibility with legacy vi
syntax on
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
let g:solarized_termcolors=256
set t_Co=256 
set background=dark
colorscheme solarized
set autochdir

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
let mapleader = ","
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org    "org-mode support
au BufEnter *.org            call org#SetOrgFileType()
set number                    " show line numbers
set laststatus=2              " show status line
set foldmethod=syntax
"set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

"autocmd BufEnter * silent! lcd %:p:h "clashes with commandT 

" disable arrow keys to force to use correct keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap jj <ESC>

" golang
"set rtp+=$GOROOT/misc/vim
"set rtp+=/usr/local/go/misc/vim
" filetype plugin indent on
" syntax on
"
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

runtime macros/matchit.vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


