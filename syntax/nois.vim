" Vim syntax file
" Language:     Nois

syn keyword noisConditional           match
syn match   noisIdentifier            "\w\+"
syn keyword noisKeyword               return

syn keyword noisType                  I F C B Fn

syn keyword noisBoolean               True False

syn match   noisFuncCall              "\w\(\w\)*("he=e-1,me=e-1

syn match   noisOperator              display "\%(+\|-\|/\|*\|=\|\^\|&\||\|!\|>\|<\|%\)=\?"
syn match   noisArrowCharacter        display "->"

syn match   noisSpecial               "\\\\\\\n\|\\r\|\\t\|\\u\x\{4\}" contained containedin=noisStringD,noisStringS,noisStringB display
syn region  noisStringD               start=+"+ skip=+\\\\\|\\"+ end=+"\|$+  contains=noisSpecial extend
syn region  noisStringS               start=+'+ skip=+\\\\\|\\'+ end=+'\|$+  contains=noisSpecial extend

syn match   noisDecNumber             display "\<[0-9][0-9_]*\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match   noisFloat                 display "\<[0-9][0-9_]*\.\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\|\.\)\@!"
syn match   noisFloat                 display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=\(f32\|f64\)\="
syn match   noisFloat                 display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\=\%([eE][+-]\=[0-9_]\+\)\(f32\|f64\)\="
syn match   noisFloat                 display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\=\%([eE][+-]\=[0-9_]\+\)\=\(f32\|f64\)"

syn match   noisCharacterInvalid      display contained /b\?'\zs[\n\r\t']\ze'/
syn region  noisCommentLine           start="//" end="$" contains=noisTodo,@Spell
syn keyword noisTodo                  contained TODO

syn region  noisFoldBraces            start="{" end="}" transparent fold

hi def link noisDecNumber             noisNumber

hi def link noisSpecial               Special
hi def link noisStringD               String
hi def link noisStringS               String
hi def link noisNumber                Number
hi def link noisBoolean               Boolean
hi def link noisFloat                 Float
hi def link noisArrowCharacter        noisOperator
hi def link noisOperator              Operator
hi def link noisKeyword               Keyword
hi def link noisConditional           Conditional
hi def link noisIdentifier            Identifier
hi def link noisFuncCall              Function
hi def link noisCommentLine           Comment
hi def link noisCommentLineDoc        SpecialComment
hi def link noisType                  Type
hi def link noisTodo                  Todo

syn sync minlines=200
syn sync maxlines=500
