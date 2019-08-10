" Vim Compiler File
" Compiler:    proverif
" Maintainer:  Jeffrey Lau <who.else@NOSPAMjlau.tk>
" URL:         https://github.com/zoonfafer/proverif.vim
" Last Change:
"              2019 Aug 10 - Initialize
"

if exists("current_compiler")
	finish
endif
let current_compiler = "proverif"

let s:cpo_save = &cpo
set cpo&vim

" TODO: this is just a copy-pasta from vim-ocaml
" (https://github.com/rgrinberg/vim-ocaml/blob/master/compiler/ocaml.vim)
CompilerSet errorformat =
			\%EFile\ \"%f\"\\,\ line\ %l\\,\ characters\ %c-%*\\d:,
			\%EFile\ \"%f\"\\,\ line\ %l\\,\ characters\ %c-%*\\d\ %.%#,
			\%EFile\ \"%f\"\\,\ line\ %l\\,\ character\ %c:%m,
			\%+EReference\ to\ unbound\ regexp\ name\ %m,
			\%Eocamlyacc:\ e\ -\ line\ %l\ of\ \"%f\"\\,\ %m,
			\%Wocamlyacc:\ w\ -\ %m,
			\%-Zmake%.%#,
			\%C%m,
			\%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',
			\%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',
			\%D%*\\a:\ Entering\ directory\ `%f',
			\%X%*\\a:\ Leaving\ directory\ `%f',
			\%D%*\\a[%*\\d]:\ Entering\ directory\ '%f',
			\%X%*\\a[%*\\d]:\ Leaving\ directory\ '%f',
			\%D%*\\a:\ Entering\ directory\ '%f',
			\%X%*\\a:\ Leaving\ directory\ '%f',
			\%DEntering\ directory\ '%f',
			\%XLeaving\ directory\ '%f',
			\%DMaking\ %*\\a\ in\ %f

let &cpo = s:cpo_save
unlet s:cpo_save
