" Language:    ProVerif
" Maintainer:  Jeffrey Lau        <who.else@NOSPAMjlau.tk>
" URL:         https://github.com/zoonfafer/proverif.vim
" Last Change:
"              2019 Aug 10 - Initialize

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" Use standard compiler settings unless user wants otherwise
if !exists("current_compiler")
	:compiler proverif
endif

" some macro
if exists('*fnameescape')
	function! s:Fnameescape(s)
		return fnameescape(a:s)
	endfun
else
	function! s:Fnameescape(s)
		return escape(a:s," \t\n*?[{`$\\%#'\"|!<")
	endfun
endif

" Error handling -- helps moving where the compiler wants you to go
let s:cposet = &cpoptions
set cpo&vim

" Comment string
setlocal comments =
setlocal commentstring =(*%s*)

" Let % jump between structure elements (due to Issac Trotts)
let b:match_words =
			\ '\<let\>:\(\<in\>\|;\)'
			\. ',\<if\>:\<then\>:\<else\>'

let b:match_ignorecase = 0

let &cpoptions = s:cposet
unlet s:cposet
