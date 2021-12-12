setlocal cindent 
setlocal nolist
" add a new todo element
inoremap <buffer> <localleader><CR> <ESC>$:call NewItem()<CR>
" toggle done
inoremap <buffer> <localleader>m <ESC>:call MarkToggle()<CR>
" insert current date
inoremap <buffer> <localleader>d <C-R>=strftime('%Y-%m-%d')<CR>
inoremap <buffer> <localleader><localleader> @ 

" add a new todo element
nnoremap <buffer> <localleader><CR> :call NewItem()<CR>
" toggle done
nnoremap <buffer> <localleader>m :call MarkToggle()<CR>
nnoremap <buffer> <localleader><localleader> i@ 
 
function! NewItem()
	if getline(line('.')) =~ '^[ \t]*$'
		if getline(line('.') - 1) =~ '^\t'
			substitute/^.*$/\t- [ ] /
		else
			substitute/$/- [ ] /
		endif
	else
		normal! o- [ ]  
	endif
	normal! $
	startinsert
endfunction

function! MarkToggle() 
	let line = getline(line("."))
	if match(line, '\[\s*\]') >= 0
		substitute/\[\s*\]/[x]/
	elseif match(line, '\[x\]') >= 0
		substitute/\[x\]/[ ]/
	endif
endfunction 
