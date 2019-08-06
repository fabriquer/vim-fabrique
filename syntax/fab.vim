"
" Vim syntax file for Fabrique.
"

if exists("b:current_syntax")
  finish
endif


"
" Identifiers:
"
syn match	fabIdentifier	display '\<[_a-zA-Z][_a-zA-Z0-9]*\>' skipwhite
hi def link	fabIdentifier	Identifier


"
" Keywords:
"

syn keyword	fabType		bool int record string list file type
hi def link	fabType		Type

syn keyword	fabBuiltin	action args function import
syn keyword	fabBuiltin	buildroot srcroot subdir
hi def link	fabBuiltin	Function

syn keyword	fabInOut	in out
hi def link	fabInOut	Label

syn keyword	fabKeyword	print type
hi def link	fabKeyword	Keyword

syn keyword	fabConditional	if else
hi def link	fabConditional	Conditional
syn keyword	fabRepeat	for
hi def link	fabRepeat	Repeat

" Operators:
syn match	fabAdd		'+'
syn match	fabAnd		'\<and\>'
syn match	fabDivide	'/'
syn match	fabMultiply	'*'
syn match	fabNot		'\<not\>'
syn match	fabNotEquals	'!='
syn match	fabOr		'\<or\>'
syn match	fabPrefix	'\<::\>'
syn match	fabPostfix	'\<:::\>'
syn match	fabQuery	'?'
syn match	fabSubtract	'-'
syn match	fabXor		'\<xor\>'
hi def link	fabAdd		Operator
hi def link	fabAnd		Operator
hi def link	fabDivide	Operator
hi def link	fabMultiply	Operator
hi def link	fabNot		Operator
hi def link	fabNotEquals	Operator
hi def link	fabOr		Operator
hi def link	fabPrefix	Operator
hi def link	fabPostfix	Operator
hi def link	fabQuery	Operator
hi def link	fabScalarAdd	Operator
hi def link	fabSubtract	Operator
hi def link	fabXor		Operator

" Other symbols:
syn match	fabAssign	'='
syn match	fabColon	':'
syn match	fabComma	','
syn match	fabFieldSep	'\.'
syn match	fabInput	'\<<-\>'
syn match	fabParen	'[\[\]{}()]'
syn match	fabProduces	'\<->\>'
syn match	fabSemicolon	';'
hi def link	fabAssign	Special
hi def link	fabColon	Special
hi def link	fabComma	Special
hi def link	fabFieldSep	Special
hi def link	fabInput	Special
hi def link	fabParen	Special
hi def link	fabProduces	Special
hi def link	fabSemicolon	Special


"
" Comments:
"
syn match	fabComment	"#.*$" display contains=fabTodo
hi def link	fabComment	Comment

syn keyword	fabTodo		TODO FIXME XXX contained
hi def link	fabTodo		Todo


"
" Strings:
"
syn region	fabString	start=+[bB]\='+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend
syn region	fabString	start=+[bB]\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend
syn region	fabString	start=+[bB]\="""+ end=+"""+ keepend
syn region	fabString	start=+[bB]\='''+ end=+'''+ keepend
hi def link	fabString	String

syn match	fabStrVar	"${.*}" contained containedin=fabString
hi def link	fabStrVar	Special


"
" Multi-file syntax:
"
syn region	fabFileGroup	matchgroup=Special start=/files(/ end=/)/

syn match	fabFilename	"\<[A-Za-z0-9\-_\.]\+\>" contained containedin=fabFileGroup
hi def link	fabFilename	Constant

syn match	fabBadFile	".*[(#\$].*" contained containedin=fabFileGroup
hi def link	fabBadFile	Error

syn match	fabFileSpace	"\s\+" contained containedin=fabFileGroup
hi def link	fabFileSpace	Whitespace


"
" Other literals:
"
syn match	fabBool		'\<true\>'
syn match	fabBool		'\<false\>'
hi def link	fabBool		Boolean

syn match	fabNumber	'\<[0-9]\+\>'
hi def link	fabNumber	Number

let b:current_syntax = "fab"
