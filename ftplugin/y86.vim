" Vim filetype plugin file
" Language:	y86
" Maintainer:	Will Toher
" Last Change:	2017 Oct 13

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Using line continuation here.
let s:cpo_save = &cpo
set cpo-=y86

setlocal comments="#"           " Comma-separated list of strings that can start a comment line
"setlocal commentstring="#%s"   " For enclosed comments e.g. /**/.
                                " Currently only used for folding
setlocal iskeyword+=%           " Treat % character as part of a word for the purposes of navigation

let &cpo = s:cpo_save
unlet s:cpo_save
