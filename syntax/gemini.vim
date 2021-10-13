" Vim syntax file
" Language: gemtext
" Maintainer: Lokesh Krishna
" Latest revision: 10 October, 2021

if exists("b:current_syntax")
  finish
endif

" preformatted text
syn region preformattedText start=/^```/ end=/^```/

" headings
syn match headingStart /^#\{1,3}[^#]/ nextgroup=headingTitle skipwhite
syn match headingTitle /.*$/ contained

" links
syn match linkStart /^=>/ nextgroup=linkURL skipwhite
syn match linkURL /\S\+/ contained nextgroup=linkTitle skipwhite
syn match linkTitle /.*$/ contained

" lists
syn match listStart /^*/

" quotes
syn match quoteLine /^>.*/

" highlight definitions
hi def link preformattedText MoonflyGrey247
hi def link headingStart MoonflyPurple
hi def link headingTitle MoonflyBlue
hi def link linkStart MoonflyEmerald
hi def link linkURL MoonflyGreen
hi def link linkTitle MoonflySky
hi def link listStart MoonflyPurple
hi def link quoteLine MoonflyItalics

let b:current_syntax = "gemtext"
