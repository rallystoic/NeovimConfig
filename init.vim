" vim plug location
" /.local/share/nvim/site/plugged/
set number
syntax enable
:set tabstop=4
:set shiftwidth=4
:set expandtab


call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'tpope/vim-surround'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'

Plug 'OmniSharp/omnisharp-vim'
Plug 'w0rp/ale'



Plug 'prabirshrestha/asyncomplete.vim'
Plug 'runoshun/tscompletejob'
Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'

Plug 'scrooloose/nerdtree'
"Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
call plug#end()


"set key for newtab
map <C-t> :NERDTreeToggle<cr>
"ctrl-l = next
map <C-l> :tabn<cr>
"ctrl+h for tab left and ctrl+l for tab right
map <C-h> :tabp<cr>
"ctrl-h = previous
map <C-\> :FZF<cr>

map <F2> :tab new<cr>
:nnoremap <leader>w :w<CR>
:nnoremap <leader>' f'ci'
:nnoremap <leader>" f"ci"
:nnoremap <leader>{ f{ci{
:nnoremap <leader>( f(ci(
:nnoremap <leader>nh :noh<CR>
:nnoremap <leader>nu :set nu!<CR>
:nnoremap <leader>1 vaw"1y<CR>
:nnoremap <leader>2 vaw"2y<CR>
:nnoremap <leader>fn i(){<CR>}<Esc>k_
:nnoremap <leader>pu ipublic $ {get;set;}<Esc>_f$cw
" remove blank line
" :nnoremap <leader>9 :g/^\s*$/d<CR>
" ":nnoremap <leader>4 :%s/^\_s\+/\r/g<CR>
"
"
"
"
":imap jk <Esc>
"


"let g:typescript_compiler_binary = 'tsc'
"English Dictionary for writing a document!
au FileType * execute 'setlocal dict+=~/.vim/words/'.&filetype.'.txt'.'.md'
set dictionary+=/usr/share/dict/words

"snippets
"activateAddons vim-snippets snipmate
"
"
call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
    \ 'name': 'tscompletejob',
    \ 'whitelist': ['typescript'],
    \ 'completor': function('asyncomplete#sources#tscompletejob#completor'),
    \ }))


" Tell ALE to use OmniSharp for linting C# files, and no other linters.
 let g:ale_linters = { 'cs': ['OmniSharp'] }
 let g:ale_linters = {
 \ 'cs': ['OmniSharp']
 \}
"
"
" " Update semantic highlighting after all text changes
 let g:OmniSharp_highlight_types = 3

