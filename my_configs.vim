""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTree by default
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
colo desert

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

se nu
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
let g:python3_host_prog  = '/Users/dineshgurumurthy/anaconda3/bin/python'
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
let g:deoplete#sources#go#json_directory ='~/.vimruntime/sources_non_forked/deoplete-go/data/json/1.7.3/linux_amd64/'

 " Go related mappings
 au FileType go nmap <Leader>i <Plug>(go-info)
 au FileType go nmap <Leader>gd <Plug>(go-doc)
 au FileType go nmap <Leader>r <Plug>(go-run)
 au FileType go nmap <Leader>b <Plug>(go-build)
 au FileType go nmap <Leader>t <Plug>(go-test)
 au FileType go nmap gd <Plug>(go-def-tab)

call plug#begin('~/.vimruntime/sources_non_forked')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Initialize plugin system
call plug#end()

let s:tlist_def_go_settings = 'go;g:enum;s:struct;u:union;t:type;' .
                           \ 'v:variable;f:function'
" Netrw Style Listing                    
let g:netrw_banner = 0                   
let g:netrw_liststyle = 3                
let g:netrw_browse_split = 4             
let g:netrw_altv = 1                     
let g:netrw_winsize = 25                 
nnoremap <leader><leader> :Lexplore<CR>
