syntax match todoElement "\[\]"
syntax match todoElement "\[ \]"
syntax match done "\[x\].*"
syntax match listElement "^\s*-"
syntax match date "[0-9]\{4}-[0-9]\{2}-[0-9]\{2}"
syntax match section "@.*"

"set highlights 
highlight todoElement		ctermfg=GREEN
highlight done				ctermfg=DARKGREY
highlight listElement		ctermfg=YELLOW
highlight date				ctermfg=MAGENTA
highlight section			ctermfg=GREEN
