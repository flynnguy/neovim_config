set nocompatible

call plug#begin()
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}        " Go development plugin
Plug 'ctrlpvim/ctrlp.vim'                               " vim fizzy file finder
Plug 'jiangmiao/auto-pairs'                             " Auto add trailing quotes
Plug 'mhinz/vim-mix-format'
Plug 'tpope/vim-sensible'                               " Some sensible defaults
Plug 'tpope/vim-commentary'                             " commentary.vim: comment stuff out http://www.vim.org/scripts/script.php?script_id=3695
Plug 'tpope/vim-rsi'                                    " Add unix readline shortcuts to vim
Plug 'tpope/vim-unimpaired'                             " pairs of handy bracket mappings
Plug 'tpope/vim-repeat'                                 " Adds ability to repeat more things
Plug 'tpope/vim-speeddating'                            " Add smart incrementing for dates
Plug 'tpope/vim-surround'                               " add/remove/change [](){}<>/tags around text
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'                               " Interface with git from vim (required for gitv)
Plug 'tpope/vim-git'                                    " Syntax highlighting for git config files
Plug 'tpope/vim-endwise'                                " end certain structures automatically
Plug 'vim-scripts/indentpython.vim'
Plug 'bling/vim-bufferline'                             " super simple vim plugin to show the list of buffers in the command bar
Plug 'vim-scripts/python_match.vim'                     " extends % to work better with python
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/YankRing.vim'                         " Maintains a history of previous yanks, changes and deletes http://www.vim.org/scripts/script.php?script_id=1234
Plug 'psf/black', {'tag': '19.10b0'}                    " Python Code formatting/linting
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'                           " Add git status in gutter
Plug 'ntpeters/vim-better-whitespace' " Remove trailing spaces
Plug 'sheerun/vim-polyglot' " Language packs
Plug 'SirVer/ultisnips' " lots of snippets
Plug 'honza/vim-snippets' " some more snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc intellisense engine
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'vim-test/vim-test'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0'}

Plug 'puremourning/vimspector'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'}
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

Plug 'simrat39/rust-tools.nvim'

" html / css
Plug 'vim-scripts/HTML-AutoCloseTag' " Autoclose HTML tags
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque' " colorpreview #aaa
Plug 'tpope/vim-haml'
Plug 'othree/html5.vim'

" JavaScript
Plug 'pangloss/vim-javascript' " JavaScript Syntax
Plug 'othree/javascript-libraries-syntax.vim' " Syntax for some JS libraries

Plug 'elixir-editors/vim-elixir'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

let g:loaded_perl_provider = 0                    " Don't use perl provider
let g:python3_host_prog = "~/.pyenv/versions/neovim3/bin/python"
let $GOPATH = "/Users/chris-flynn/go"
set relativenumber
au FocusLost * :set number
au FocusGained * :set relativenumber

" JavaScript
" Plug 'pangloss/vim-javascript' " JavaScript Syntax
" Plug 'othree/javascript-libraries-syntax.vim' " Syntax for some JS libraries
cmap w!! %!sudo tee > /dev/null %

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Old CtrlP, trying telescope below
" map <leader>f :CtrlPMixed<CR>
" map <leader>t :CtrlP<CR>
" map <leader>m :CtrlPMRUFiles<CR>
map <leader>b :CtrlPBuffer<CR>

" " Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').treesitter()<cr>

imap <c-a> <Home>
imap <c-e> <End>

set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set nowrap                  " don't wrap text
set autoindent              " always set autoindenting on
set tabstop=4               " <tab> inserts 4 spaces
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well

nnoremap <leader>[ :bprev<cr>
nnoremap <leader>] :bnext<cr>

set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.
set ls=2                    " allways show status line
set showcmd                 " Show incomplete normal mode commands as I type.
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
map // :nohlsearch<cr>; echo 'Search highlight cleared' <cr>
set incsearch               " Incrementally search while typing a /regex
set clipboard=unnamed
let g:yankring_clipboard_monitor=0
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
if has("mac")
    let g:rust_clip_command = 'pbcopy'
endif

if (has("termguicolors"))
    set termguicolors
endif

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" use coc for jumps
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)


" coc lint fix
noremap <leader>lf <Plug>(coc-fix-current)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" use <c-w> for trigger completion.
inoremap <silent><expr> <c-w> coc#refresh()

" rename current word
nmap <leader>rn <Plug>(coc-rename)

" use <c-j> and <c-k> for selection options
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"use <tab> for trigger completion, completion confirm, snippet expand and jump
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" autocompletion
set completeopt+=preview
set completeopt+=menuone
set completeopt+=noinsert
set shortmess+=c " turn off completion messages

" ==========================================================
" Python
" ==========================================================
"au BufRead *.py compiler nose
"au FileType python set omnifunc=pythoncomplete#Complete
" au FileType python set omnifunc=jedi#complete
" let g:jedi#show_call_signatures = "u"
au BufRead,BufNewFile *.py set expandtab
au BufNewFile,BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au BufNewFile,BufRead *.py set foldmethod=indent       " allow us to fold on indents
let python_highlight_all=1

" ==========================================================
" Javascript
" ==========================================================
"au BufRead *.js set makeprg=jslint\ %
"au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"au FileType html set omnifunc=htmlcomplete#CompleteTags
"au FileType css set omnifunc=csscomplete#CompleteCSS
"au BufReadPost *.cps set syntax=javascript

"au BufNewFile,BufRead *.sah set filetype=sahi
au! BufNewFile,BufRead *.json set filetype=json
augroup json_autocmd
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=2
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END
" Visual Selection and then \j to prettify json
map <Leader>j !python -m json.tool<CR>

autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
"autocmd FileType javascript setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2

" ==========================================================
" Arduino files
" ==========================================================
au! BufNewFile,BufRead *.pde set ft=arduino

" ==========================================================
" Chezmoi
" ==========================================================
autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path "%"

" ==========================================================
" ALE
" ==========================================================
let g:airline#extensions#ale#enabled = 1
"" call deoplete#custom#option('sources', {
"" \ '_': ['ale'],
"" \})

au! BufNewFile,BufRead *.ex set filetype=elixir
au! BufNewFile,BufRead *.exs set filetype=elixir
let g:ale_elixir_elixir_ls_release='/Users/chris-flynn/src/elixir-ls/'

let g:ale_linters = {
\ 'python': ['black', 'pylint'],
\ 'javascript': ['eslint'],
\ 'go': ['gobuild', 'gofmt'],
\ 'rust': ['analyzer', 'cargo'],
\ 'elixir': ['elixir-ls'],
\}
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'python': ['black', 'isort',],
\ 'javascript': ['eslint'],
\ 'go': ['gofmt', 'goimports'],
\ 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'],
\ 'elixir': ['mix_format'],
\}

"let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

noremap <Leader>ad :ALEGoToDefinition<CR>
nnoremap <leader>af :ALEFix<cr>
noremap <Leader>ar :ALEFindReferences<CR>


""=============================

nnoremap <leader>h :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
    let @/ = ''
    if exists('#auto_highlight')
        au! auto_highlight
        augroup! auto_highlight
        setl updatetime=4000
        echo 'Highlight current word: off'
        return 0
    else
        augroup auto_highlight
            au!
            au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
        augroup end
        setl updatetime=500
        echo 'Highlight current word: ON'
        return 1
    endif
endfunction


lua <<EOF
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup{
    settings = {
        ["rust-analyzer"] = {
            checkOnSave = true,
            check = {
                enable = true,
                command = "clippy",
                features = "all",
            }
        }
    }
}

require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c",
        "cpp",
        "css",
        "dockerfile",
        "eex",
        "elixir",
        "erlang",
        "go",
        "gomod",
        "gowork",
        "graphql",
        "heex",
        "html",
        "http",
        "javascript",
        "json",
        "latex",
        "lua",
        "make",
        "markdown",
        "python",
        "regex",
        "rust",
        "scss",
        "sql",
        "surface",
        "toml",
        "typescript",
        "vim",
        "yaml"
    },
    auto_install = true,
    highlight = { enable = true },
    ident = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
}
EOF

lua <<EOF
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
EOF

" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
