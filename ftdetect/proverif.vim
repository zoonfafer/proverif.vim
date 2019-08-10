" Support functions {{{

function! s:setf(filetype) abort
	if &filetype !~# '\<'.a:filetype.'\>'
		let &filetype = a:filetype
	endif
endfunction

func! s:StarSetf(ft)
	if expand("<amatch>") !~ g:ft_ignore_pat
		exe 'setf ' . a:ft
	endif
endfunc
" }}}

" Proverif
au BufNewFile,BufRead *.pv	call s:setf('proverif')
