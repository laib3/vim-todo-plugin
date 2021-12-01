" add a new todo element
inoremap <buffer> <localleader><CR> <ESC>o- [ ] 
" toggle done
inoremap <buffer> <localleader>m <ESC>:call MarkToggle()<CR>
" insert current date
inoremap <buffer> <localleader>d <C-R>=strftime('%Y-%m-%d')<CR>
" insert a new section
inoremap <buffer> <localleader><localleader> @ 

" add a new todo element
nnoremap <buffer> <localleader><CR> o- [ ] 
" toggle done
nnoremap <buffer> <localleader>m :call MarkToggle()<CR>
" insert a new section
nnoremap <buffer> <localleader><localleader> @ 

function! MarkToggle() 
	let line=getline(line("."))
	if match(line, '\[\s*\]') >= 0
		substitute/\[\s*\]/[x]/
	elseif match(line, '\[x\]') >= 0
		substitute/\[x\]/[ ]/
	endif
endfunction 
