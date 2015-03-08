""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTree by default
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

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

