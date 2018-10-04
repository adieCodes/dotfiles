call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
call plug#end()

syntax enable
colorscheme nord

" YCM

" Start autocompletion after 4 chars
"let g:ycm_min_num_of_chars_for_completion = 4
"let g:ycm_min_num_identifier_candidate_chars = 4
"let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
"set completeopt-=preview
"let g:ycm_add_preview_to_completeopt = 0

" Prettier

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" Ale

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" nerdcommenter
Plug 'itchyny/lightline.vim'
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" airline theme

let g:airline_theme="deus"

" Use clipboard

if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" allow backspace to delete text outside of current session
set backspace=indent,eol,start
