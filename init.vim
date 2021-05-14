
call plug#begin('~/.config/nvim/plugged')

    Plug 'ptzz/lf.vim'
    Plug 'voldikss/vim-floaterm'
    Plug 'ap/vim-css-color'
    Plug 'neoclide/coc.nvim'
    Plug 'liuchengxu/vim-which-key'  
    Plug 'justinmk/vim-sneak'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdcommenter'

" Themes
    Plug 'kyoz/purify', { 'rtp': 'vim' }
    Plug 'dracula/vim', { 'name': 'dracula' }

call plug#end()

" source plugins
source ~/.config/nvim/plugs/sneak.vim

" airline configuration
let g:airline#extensions#tabline#enabled = 1    " to show all buffers when only one tab is opened
let g:airline#extensions#tabline#buffer_nr_show = 1 " to show buffer number with airline
" let g:airline_theme='powerlineish'
" let g:airline#extensions#tabline#left_sep = ' '   " these are seprators
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1    " to use powerline fonts

" lf configuration
" let g:lf_map_keys = 0
" map <leader>f :Lf<CR>
let g:lf_width = 0.90
let g:lf_height = 0.85

" Basic Settings
syntax on			" will do syntax highlighting
set number relativenumber	" to add numbers relatively for lines

colorscheme purify
set timeoutlen=100

filetype plugin on

set termguicolors		" turns on true color support
set clipboard+=unnamedplus	" will copy directly to system clipboard

" Autocompletion
set wildmode=longest,list,full	" tab autocompletion will show longest 1st than list than full

" Fix Splitting
set splitbelow splitright	" new instance of a file will open in right and below and will not move old instance

" tab stops
set tabstop=4			" size of the single tab
set shiftwidth=4		" size of the shift when used >> or <<
set expandtab			" to make tabstop active

" map keys for buffer change, buffer can also be changed with buf_num <C-6> or
" :b <Tab_to_get_buffer_num>
map <C-p> :bnext<CR>       
map <C-n> :bprevious<CR>
map <C-P> :bfirst<CR>
map <C-N> :blast<CR>

" enable disable auto comment (leader key is backslash \ )
map <leader>Cf :setlocal formatoptions-=cro<CR>
map <leader>Cn :setlocal formatoptions=cro<CR>

" enable disable auto-indent
map <leader>In :setlocal autoindent<CR>
map <leader>If :setlocal noautoindent<CR>

" spell checker : uses builtin spell checker
map <leader>Sc :setlocal spell! spelllang=en_us<CR>	

" shell check : needs shellcheck to be installed
map <leader>Pc :!clear && shellcheck %<CR>

" insert to center: will center the screen vertically when enters insert mode
autocmd InsertEnter * norm zz	

" split navigation
map <C-h> <C-w>h	
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" vim-which-key
nnoremap <silent> <leader> :WhichKey '<leader>'<CR>

" change split openings
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

" coc commands
" CocInstall coc-highlight
" CocList extensions
" CocInfo
" CocConfig ---> will open coc-settings.json
" checkhealth   ---> to check health of the server
" CocOpenLog  ---> to check the logs
let g:coc_global_extensions = [
    \    'coc-pairs',
    \    'coc-json',
    \    'coc-pyright',
    \    'coc-sh',
    \    'coc-prettier',
    \     ]

" configure prettier (formatter like black in vscode)
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" nerdcommenter configuration
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

map <C-/> <leader>c<space> 
