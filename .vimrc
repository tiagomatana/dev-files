" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==========================================================
" ================== Plugins Instalados === ================
" ==========================================================
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Diretorio de arquivos
Plugin 'scrooloose/nerdtree'
"Identação para arquivos JSon
Plugin 'elzr/vim-json'
"Plugin para Busca de Arquivos
Plugin 'kien/ctrlp.vim'
" Syntax para CSS3
Plugin 'hail2u/vim-css3-syntax'
"Controle Git
Plugin 'tpope/vim-fugitive'
"Possui varios recursos, entre eles barra de controle
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Adição de dados a linha do tmux
Plugin 'edkolev/tmuxline.vim'
"Abre e fecha tags e outros elementos
Plugin 'Raimondi/delimitMate'
"Plugin para adicionar autcomplete basico usando tecla TAB
Plugin 'ervandew/supertab'
"Verifica syntax de Código
"Plugin 'scrooloose/syntastic'
"Plugin para visualização e edição de Arquivos CSVs
Plugin 'chrisbra/csv.vim'
"Mostra Bar lateral com atalhos para methods e atributos
Plugin 'majutsushi/tagbar'
"Edição de arquivos SQLS
Plugin 'SQLUtilities'
"Alinhamento de colunas e tabulação em arquivos
Plugin 'godlygeek/tabular'
"Busca e filtros dentro do arquivo
Plugin 'easymotion/vim-easymotion'
"Comentar codigo
Plugin 'scrooloose/nerdcommenter'
"Identificação para modificações git em arquivo
Plugin 'airblade/vim-gitgutter'
"Plugin para mostrar cores durente edição de CSS
Plugin 'ap/vim-css-color'
"Higlight para JavaScript + Identação
"Plugin 'pangloss/vim-javascript'
"Plugin pra padrão de identação
Plugin 'editorconfig/editorconfig-vim'
" Plugin para Mapping HTML, XML, PHP, ASP, ERUBY, JSP etc
Plugin 'tpope/vim-ragtag'
"Themas 
Plugin 'morhetz/gruvbox'
"Plugin para Html
"Plugin 'mattn/emmet-vim'
"Identação de Código JS
Plugin 'maksimr/vim-jsbeautify'
"Templates para texto
Plugin 'SirVer/ultisnips'
"Angular Plugin
Plugin 'burnettk/vim-angular'
"JShint Validação Código JS
Plugin 'wookiehangover/jshint.vim'

call vundle#end()            " required

"Configuração para acesso ao diretorio de arquivos
map <C-t> :NERDTreeToggle<CR>
map <C-o> :NERDTree %<CR>

" Habilita identação ao salvar a partir do Clipboard
set pastetoggle=<F2>

"Remoção de arquivos desnecessarios para busca do CtrlP
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|target|node_modules)$',
      \ 'file': '\v\.(iml|exe|so|dll|class|swp)$',
      \ }
set wildignore+=*/target/**,*/node_modules/**

" disable caching
let g:ctrlp_use_caching=0

" ==========================================================
" ================== Configurações de Thema ================
" ==========================================================
"Configuração do airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='base16'
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#fnamemod = ':t'
"Configuração esquema de cores
syntax enable
set background=dark
colorscheme gruvbox
" ==========================================================
" ================== Configurações de Layout ===============
" ==========================================================
" Sempre mostra barra de status
set laststatus=2
"Separação para Nerdtree
set fillchars+=vert:\:
"Configuração para Delimiter
let delimitMate_expand_cr = 1
"Mostrar linhas laterais
set number
" Habilita mouse para uso no VIM
set mouse=a
set list lcs=tab:\|\ 
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239
" ==========================================================
" ================== Correção de Bugs ======================
" ==========================================================
"Correção para Erro de Drag do Nerdtree
set ttymouse=xterm2
" ==========================================================

"Configurações para plugin de CSV
filetype plugin on

"Configurações para Syntastic - Syntax de erros
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Abrir arquivos usando CTRP side by Side Usando c-v
set splitright

"Inicia Syntax Modo Passivo
"let g:syntastic_check_on_open = 0

"Nevegação entre buffer

" " different highlight method and have some other features )
let g:EasyMotion_smartcase = 1

"Configuracoes de uso
set clipboard+=unnamedplus
set nowrap
set cursorline
filetype plugin indent on

"Configurações Padrões para Editor
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_exclude_patterns = ['scp://.*']
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

set filetype=html           
set smartindent 

"Validação JS Automatica
"let JSHintUpdateWriteOnly=1
let jshint2_read = 1

".vimrc
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"

command Xclip '<,'>w !xclip -selection c -i
nmap <F8> :TagbarToggle<CR>
"map <c-f> :call JsBeautify()<cr>
nnoremap <C-f> gg=G
map <C-S-a> <esc>ggVG<CR>
map <C-S-c> <esc>gg"*yG<CR>
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <C-z> :bnext<CR>
map <C-\> :bprevious<CR>
map <F12> :copen<CR>
