" File: vim-append.vim
" Author: René Michalke
" Description: Mappings to append characters to the current line or current selection
" of lines.
" Last Modified: Juni 13, 2020

function! AppendCharacter(char)
	:silent :execute "normal! mzA".a:char."\e`z:delmark z\r"
endfunction

" =================
" = Append period =
" =================

" normal mode mapping
nnoremap <leader>. :call AppendCharacter(".")<cr>
" visual mode mapping
vnoremap <leader>. :call AppendCharacter(".")<cr>

" ================
" = Append comma =
" ================

" normal mode mapping
nnoremap <leader>, :call AppendCharacter(",")<cr>
" visual mode mapping
vnoremap <leader>, :call AppendCharacter(",")<cr>

" ====================
" = Append semicolon =
" ====================

" normal mode mapping
nnoremap <leader>; :call AppendCharacter(";")<cr>
" visual mode mapping
vnoremap <leader>; :call AppendCharacter(";")<cr>
