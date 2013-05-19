syn clear
syn case ignore
syn sync lines=250

syn keyword newtTodo		contained	TODO

syn keyword newtAccess		local
syn keyword newtAccess		global
syn keyword newtAccess		constant

syn region newtString		start=+L\="+	skip=+\\\\\|\\"+ end=+"+

syn match newtDelimiter		"[()]"
syn match newtMatrixDelimiter	"[][]"
syn match newtObjectDelimiter	"[{}]"

syn match newtNumber		"-\=\<\d\+\>"
syn match newtByte		"\$[0-9a-fA-F]\+\>"
syn match newtPointer		"@"

syn region newtComment		start="//"	end="$"	contains=newtTodo
syn region newtComment		start="/\*"	end="\*/"
syn region newtComment		start="#"	end="\n"

syn keyword newtLabel		case

syn match   newtAssignment	":="

syn keyword newtConstant	true
syn keyword newtConstant	nil

syn keyword newtConditional	if
syn keyword newtConditional	then
syn keyword newtConditional	else
syn keyword newtConditional	try
syn keyword newtConditional	onexception

syn keyword newtRepeat		do
syn keyword newtRepeat		for
syn keyword newtRepeat		foreach
syn keyword newtRepeat		while
syn keyword newtRepeat		to
syn keyword newtRepeat		downto
syn keyword newtRepeat		by
syn keyword newtRepeat		repeat
syn keyword newtRepeat		until

syn keyword newtOperator	in

syn match   newtComparator	"="
syn match   newtComparator	"<"
syn match   newtComparator      ">"

syn keyword newtFunction	func
syn keyword newtFunction	inherited
syn keyword newtFunction	self
syn keyword newtFunction	file

syn keyword newtOperator	and
syn keyword newtOperator	not
syn keyword newtOperator	or
syn keyword newtOperator	div
syn keyword newtOperator	mod
syn keyword newtOperator	xor
syn keyword newtOperator	shl
syn keyword newtOperator	shr
syn keyword newtOperator	with
syn keyword newtOperator	return
syn keyword newtOperator	break
syn keyword newtOperator	exists
syn keyword newtOperator	call

syn keyword newtProperty	_proto
syn keyword newtProperty	_parent

syn keyword newtStatement	begin
syn keyword newtStatement	end

syn keyword newtStatement	require

syn keyword newtStatement	print
syn keyword newtStatement	apply

syn keyword newtStatement	getfunctionargcount

syn keyword newtStatement	ischaracter
syn keyword newtStatement	isfunction
syn keyword newtStatement	isinteger
syn keyword newtStatement	isnumber
syn keyword newtStatement	isreadonly
syn keyword newtStatement	isreal
syn keyword newtStatement	isstring
syn keyword newtStatement	issubclass
syn keyword newtStatement	issymbol
syn keyword newtStatement	isarray
syn keyword newtStatement	isbinary
syn keyword newtStatement	isframe
syn keyword newtStatement	isimmediate
syn keyword newtStatement	isinstance

syn keyword newtStatement	makebinary
syn keyword newtStatement	setvariable
syn keyword newtStatement	symbolcomparelex

syn keyword newtStatement	stuffcstring
syn keyword newtStatement	stuffpstring

" Get/set global variables/functions
syn keyword newtStatement	getglobalfn
syn keyword newtStatement	getglobalvar
syn keyword newtStatement	globalfnexists
syn keyword newtStatement	globalvarexists
syn keyword newtStatement	defglobalfn
syn keyword newtStatement	defglobalvar
syn keyword newtStatement	undefglobalfn
syn keyword newtStatement	undefglobalvar

" Misc functions
syn keyword newtStatement	binequal
syn keyword newtStatement	binmunger
syn keyword newtStatement	chr
syn keyword newtStatement	compile
syn keyword newtStatement	ord

" Obsolete functions
syn keyword newtStatement	arraypos
" Use LSearch instead
syn keyword newtStatement	strtruncate
" Use StyledStrTruncate instead

syn keyword newtStatement	classof
syn keyword newtStatement	clone
syn keyword newtStatement	deepclone
syn keyword newtStatement	getslot
syn keyword newtStatement	getvariable
syn keyword newtStatement	hasslot
syn keyword newtStatement	hasvariable
syn keyword newtStatement	intern
syn keyword newtStatement	map
syn keyword newtStatement	primclassof
syn keyword newtStatement	removeslot
syn keyword newtStatement	replaceobject
syn keyword newtStatement	setclass
syn keyword newtStatement	totalclone

" String functions
syn keyword newtStatement	beginswith
syn keyword newtStatement	capitalize
syn keyword newtStatement	capitalizewords
syn keyword newtStatement	charpos
syn keyword newtStatement	strexactcompare
syn keyword newtStatement	strtokenize
syn keyword newtStatement	styledstrtruncate
syn keyword newtStatement	downcase
syn keyword newtStatement	endswith
syn keyword newtStatement	isalphanumeric
syn keyword newtStatement	iswhitespace
syn keyword newtStatement	sprintobject
syn keyword newtStatement	strcompare
syn keyword newtStatement	strconcat
syn keyword newtStatement	strequal
syn keyword newtStatement	strlen
syn keyword newtStatement	strmunger
syn keyword newtStatement	strpos
syn keyword newtStatement	substr
syn keyword newtStatement	trimstring
syn keyword newtStatement	upcase

syn keyword newtStatement	strcat
syn keyword newtStatement	split

" Bitwise functions
syn keyword newtStatement	band
syn keyword newtStatement	bor
syn keyword newtStatement	bxor
syn keyword newtStatement	bnot

" Array functions
syn keyword newtStatement	addarrayslot
syn keyword newtStatement	array
syn keyword newtStatement	arrayinsert
syn keyword newtStatement	arraymunger
syn keyword newtStatement	arrayremovecount
syn keyword newtStatement	insertionsort
syn keyword newtStatement	length
syn keyword newtStatement	newweakarray
syn keyword newtStatement	setadd
syn keyword newtStatement	setcontains
syn keyword newtStatement	setdifference
syn keyword newtStatement	setlength
syn keyword newtStatement	setoverlaps
syn keyword newtStatement	lfetch
syn keyword newtStatement	lsearch
syn keyword newtStatement	setremove
syn keyword newtStatement	setunion
syn keyword newtStatement	sort
syn keyword newtStatement	stablesort

" Sorted array functions
syn keyword newtStatement	bdelete
syn keyword newtStatement	bdifference
syn keyword newtStatement	bfetch
syn keyword newtStatement	bfetchright
syn keyword newtStatement	bfind
syn keyword newtStatement	bfindright
syn keyword newtStatement	binsert
syn keyword newtStatement	binsertright
syn keyword newtStatement	bintersect
syn keyword newtStatement	bmerge
syn keyword newtStatement	bsearchleft
syn keyword newtStatement	bsearchright

" Math functions
syn keyword newtStatement	abs
syn keyword newtStatement	ceiling
syn keyword newtStatement	floor
syn keyword newtStatement	max
syn keyword newtStatement	min
syn keyword newtStatement	random
syn keyword newtStatement	real
syn keyword newtStatement	setrandomseed
syn keyword newtStatement	acos
syn keyword newtStatement	acosh
syn keyword newtStatement	asin
syn keyword newtStatement	asinh
syn keyword newtStatement	atan
syn keyword newtStatement	atan2
syn keyword newtStatement	atanh
syn keyword newtStatement	copysign
syn keyword newtStatement	cos
syn keyword newtStatement	cosh
syn keyword newtStatement	erf
syn keyword newtStatement	erfc
syn keyword newtStatement	exp
syn keyword newtStatement	expm1
syn keyword newtStatement	fabs
syn keyword newtStatement	fdim
syn keyword newtStatement	fmax
syn keyword newtStatement	fmin
syn keyword newtStatement	fmod
syn keyword newtStatement	gamma
syn keyword newtStatement	hypot
syn keyword newtStatement	isfinite
syn keyword newtStatement	isnan
syn keyword newtStatement	isnormal
syn keyword newtStatement	lessequalorgreater
syn keyword newtStatement	lessorgreater
syn keyword newtStatement	lgamma
syn keyword newtStatement	log
syn keyword newtStatement	logb
syn keyword newtStatement	log1p
syn keyword newtStatement	log10
syn keyword newtStatement	nearbyint
syn keyword newtStatement	nextafterd
syn keyword newtStatement	pow
syn keyword newtStatement	randomx
syn keyword newtStatement	remainder
syn keyword newtStatement	remquo
syn keyword newtStatement	rint
syn keyword newtStatement	rinttol
syn keyword newtStatement	round
syn keyword newtStatement	scalb
syn keyword newtStatement	signbit
syn keyword newtStatement	signum
syn keyword newtStatement	sin
syn keyword newtStatement	sinh
syn keyword newtStatement	sqrt
syn keyword newtStatement	tan
syn keyword newtStatement	tanh
syn keyword newtStatement	trunc
syn keyword newtStatement	unordered
syn keyword newtStatement	unorderedgreaterorequal
syn keyword newtStatement	unorderedlessorequal
syn keyword newtStatement	unorderedorequal
syn keyword newtStatement	unorderedorgreater
syn keyword newtStatement	unorderedorless
syn keyword newtStatement	feclearexcept
syn keyword newtStatement	fegetenv
syn keyword newtStatement	fegetexcept
syn keyword newtStatement	feholdexcept
syn keyword newtStatement	feraiseexcept
syn keyword newtStatement	fesetenv
syn keyword newtStatement	fesetexcept
syn keyword newtStatement	fetestexcept
syn keyword newtStatement	feupdateenv
syn keyword newtStatement	annuity
syn keyword newtStatement	compound

" Exception functions
syn keyword newtStatement	throw
syn keyword newtStatement	rethrow
syn keyword newtStatement	currentexception

" Message sending functions
syn keyword newtStatement	apply
syn keyword newtStatement	perform
syn keyword newtStatement	performifdefined
syn keyword newtStatement	protoperform
syn keyword newtStatement	protoperformifdefined

" Data extraction functions
syn keyword newtStatement	extractbyte
syn keyword newtStatement	extractbytes
syn keyword newtStatement	extractchar
syn keyword newtStatement	extractlong
syn keyword newtStatement	extractxlong
syn keyword newtStatement	extractword
syn keyword newtStatement	extractcstring
syn keyword newtStatement	extractpstring
syn keyword newtStatement	extractunichar

" Data stuffing functions
syn keyword newtStatement	stuffbyte
syn keyword newtStatement	stuffchar
syn keyword newtStatement	stuffcstring
syn keyword newtStatement	stufflong
syn keyword newtStatement	stuffpstring
syn keyword newtStatement	stuffunichar
syn keyword newtStatement	stuffword


syn keyword newtModifier	native
syn keyword newtModifier	constant

hi link newtAccess		Statement
hi link newtByte		Number
hi link newtComment		Comment
hi link newtConditional		Conditional
hi link newtConstant		Constant
hi link newtFunction		Function
hi link newtLabel		Label
hi link newtMatrixDelimiter	Identifier
hi link newtModifier		Type
hi link newtNumber		Number
hi link newtOperator		Operator
hi link newtPointer		Function
hi link newtRepeat		Repeat
hi link newtStatement		Statement
hi link newtString		String
hi link newtTodo		Todo

let b:current_syntax = "newt"
