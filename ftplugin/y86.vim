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

" See :h comments and :h commentstring for more info

setlocal comments=b:#,s1:/*,mb:*,ex:*/      
" Comma-separated list of strings that can start a comment line

setlocal commentstring=#\ %s,   " For enclosed comments e.g. /**/.
                                " Currently only used for folding

" /*%s*/ is a valid comment, but I prefer autocommenting plugins
" to use #, and they all look at commentstring

setlocal iskeyword+=%           " Treat % character as part of a word for the purposes of navigation

let &cpo = s:cpo_save
unlet s:cpo_save
