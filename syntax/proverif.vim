" Vim syntax file for proverif's .pv files.
"
" Original Author: smelC
" Creation: December 2015
"

if exists("b:current_syntax")
	finish
endif

syntax keyword proverifKeywords among channel choice clauses const def elimtrue else equation equivalence event expand fail forall free fun get if in insert let letfun new noninterf not nounif or otherwise out param phase pred proba process proof putbegin query reduc set suchthat table then type weaksecret yield
syntax keyword proverifTypes bitstring bool
syntax keyword proverifValues true false
syntax match proverifOperators "!"
syntax match proverifOperators "|"
syntax match proverifOperators "==>"
syntax match proverifOperators "<>"
syntax match proverifOperators "&&"
syntax match proverifOperators "||"
syntax keyword proverifQualifiers data private typeConverter

syntax region proverifInjEvent start="inj-"  end="event"
syntax region proverifComment start="(\*"  end="\*)"

highlight def link proverifComment Comment

" general format:
highlight def link proverifKeywordsColor Keyword
highlight def link proverifTypesColor Type
highlight def link proverifValuesColor String
highlight def link proverifOperatorsColor Operator
highlight def link proverifQualifiersColor Identifier

" link the (left) element with its color (right)
highlight def link proverifKeywords proverifKeywordsColor
highlight def link proverifInjEvent proverifKeywordsColor
highlight def link proverifTypes proverifTypesColor
highlight def link proverifValues proverifValuesColor
highlight def link proverifOperators proverifOperatorsColor
highlight def link proverifQualifiers proverifQualifiersColor

let b:current_syntax = "proverif"
