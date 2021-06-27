if exists('g:loaded_funzy') | finish | endif " prevent loading the file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

hi def link FunzyHeader     Number
hi def link FunzySubHeader  Identifier

" command to run our plugin
command! Funzy lua require'funzy'.funzy()

let &cpo = s:save_cpo " restore after
unlet s:save_cpo

let g:loaded_funzy = 1
