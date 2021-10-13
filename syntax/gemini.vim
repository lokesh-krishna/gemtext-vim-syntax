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
hi def link preformattedText markdownCode
hi def link headingStart Character
hi def link headingTitle htmlTagN
hi def link linkStart htmlTag
hi def link linkURL htmlLink
hi def link linkTitle htmlTagN
hi def link listStart Character
hi def link quoteLine markdownItalic

let b:current_syntax = "gemtext"
