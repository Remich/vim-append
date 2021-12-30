" File: vim-append.vim
" Author: René Michalke
" Description: Mappings to append characters to the current line or current selection
" of lines.

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

" ==================
" = Append newline =
" ==================

function! AppendNewline()
	let l:ft = &filetype
	if l:ft ==# 'markdown'
		call AppendCharacter("  ")
	elseif l:ft ==# 'html'
		call AppendCharacter("<br/>")
	else
		call AppendCharacter("\n")
	endif
endfunction

" normal mode mapping
nnoremap <leader><cr> :call AppendNewline()<cr>
" visual mode mapping
vnoremap <leader><cr> :call AppendNewline()<cr>
