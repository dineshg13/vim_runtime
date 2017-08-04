""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTree by default
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

function! s:CloseIfOnlyControlWinLeft()
    if winnr("$") != 1
        return
    endif
    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
                \ || &buftype == 'quickfix'
        q
    endif
endfunction
augroup CloseIfOnlyControlWinLeft
    au!
    au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END


autocmd FileType javascript noremap <buffer>  <c-j> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer>  <c-j> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-j> :call HtmlBeautify()<cr>
"     " for css or scss
autocmd FileType css noremap <buffer> <c-j> :call CSSBeautify()<cr>

autocmd BufNewFile,BufRead *.json set ft=javascript
se nofoldenable
" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Path to python interpreter for neovim
let g:python3_host_prog  = '/Users/dineshgurumurthy/anaconda/bin/python'
" Skip the check of neovim module
let g:python3_host_skip_check = 1
" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:deoplete#sources#syntax#min_keyword_length = 3
set completeopt-=preview


" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory ='~/.vim_runtime/sources_non_forked/deoplete-go/data/json/1.7.3/linux_amd64/'
function! g:Multiple_cursors_before()
    let g:deoplete#disable_auto_complete = 1
endfunction
function! g:Multiple_cursors_after()
    let g:deoplete#disable_auto_complete = 0
endfunction


set autowrite
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
" Go related mappings
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap gd <Plug>(go-def-tab)
au FileType go nmap gr <Plug>(go-rename)
au FileType go nmap gb <Plug>(go-doc-browser)
au FileType go nmap gl :GoDeclsDir<CR>

" let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

call plug#begin('~/.vimruntime/sources_non_forked')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'SirVer/ultisnips'

" Initialize plugin system

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#buffer_idx_mode = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set encoding=utf-8
let g:airline_powerline_fonts = 1




" Netrw Style Listing                    
let g:netrw_banner = 0                   
let g:netrw_liststyle = 3                
let g:netrw_browse_split = 4             
let g:netrw_altv = 1                     
let g:netrw_winsize = 25                 
nnoremap <leader><leader> :Lexplore<CR>


nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

if has('patch-7.4.1778')
    set guicolors
endif
if has('nvim')
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif


let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

" Theme
syntax enable
colorscheme onedark

se nu
set ignorecase
set mouse=a
let g:NERDTreeMouseMode=3 
map <Leader>y "*y
map <Leader>p "*p



set grepprg=/usr/bin/grep

call gitgutter#enable()

