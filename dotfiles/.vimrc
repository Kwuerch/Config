" Basic Setup " 
set autoindent                        " Indent at same level as previous line
set autoread                          " Automatically read a file when it changes
set backspace=indent,eol,start        " Allow unrestricted backspace
set foldenable                        " Automatically fold code
set formatoptions+=j                  " Remove comment leader when joining lines
set incsearch                         " Enable incremental search
set pastetoggle=<F2>                  " Enable unformatted paste
set ruler                             " Show the ruler
set tabstop=4                         " Use four columns for tabstop
set tags=./tags;                      " Search up tree for tags file
set wildmenu                          " Show command line completion
set wrap                              " Wrap Lines
set number                            " Line Numbers
set hlsearch                          " Hightlight Searches
set showmatch                         " Show matching brackets when text indicator is over them

filetype plugin indent on             " Enable filetype plugins and indentation
syntax on                             " Enable Syntax highlighting

set colorcolumn=80                    " Show column at 80

color monokai

" Commands "
command NoAutoComment setlocal formatoptions-=c formatoptions-=r formatoptions-=o
command AutoComment setlocal formatoptions+=c formatoptions+=r formatoptions+=o
command ToggleHighlight set hls!

" Filetype Specifics "
autocmd Filetype python setlocal tabstop=3 shiftwidth=3
autocmd Filetype c setlocal noexpandtab tabstop=4 shiftwidth=4

" Make Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Registers "
let @h='5w,'                          " @h will shift pane split left 5 times
let @l='5w.'                          " @l will shift pane split right 5 times

"---------------------------------------------------   Mappings   --------------------------------------------------"

" Insert Mode "
   imap jk <ESC>

   "Auto Close brackets & Web Tags"
   inoremap >J  ></<C-x><C-o><Esc>F<i<CR><CR><Esc>ki<Tab>
   inoremap >jj  ></<C-x><C-o><Esc>F<i

   inoremap {J {<CR>}<Esc>ko
   inoremap {jj {<space><space>}<Esc>hi

   inoremap [J [<CR>]<Esc>ko
   inoremap [jj [<space><space>]<Esc>hi

   inoremap (J (<CR>)<Esc>ko
   inoremap (jj (<space><space>)<Esc>hi

" Command Mode "
   cmap q1 q!

" Normal Mode "
   "Window Movement and Resizing"
   nmap w <C-w>
   nmap w= <C-w>+
   nmap w, <C-w><
   nmap w. <C-w>>

   "For highlighting -- Toggle -- On -- Off"
   nmap <silent> HL :ToggleHighlight<CR>

   " Save current file "
   nmap ww :w<CR>

   " Traverse Lines Linearly if Wrapped"
   nnoremap k gk
   nnoremap j gj

   " Add space without putting user in insert mode "
   nnoremap <Space><Space> i<Space><Esc>

   " Add line without insert or auto comment"
   nnoremap <silent> <Space><CR> :NoAutoComment<CR>o<Esc>:AutoComment<CR>

" Visual Mode"
   " Mapping to comment the line "
   vmap <silent> // :s/^/\/\//<CR>

"--------------------------------------------------- End Mappings ---------------------------------------------------"
