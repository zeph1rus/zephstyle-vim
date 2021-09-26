" Vim Colourscheme
" zephstyle3

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "zephstyle"


function!  Coloring(group,guibg,guifg,gui,ctermbg,ctermfg)
	let highlightstr = 'highlight ' . a:group . ' '
	let highlightstr .= 'guibg=' . a:guibg . ' '
	let highlightstr .= 'guifg=' . a:guifg . ' '
	let highlightstr .= 'gui=' . a:gui . ' '
	let highlightstr .= 'ctermbg=' . a:ctermbg . ' '
	let highlightstr .= 'ctermfg=' . a:ctermfg . ' '
	let highlightstr .= 'cterm=' . a:gui . ' '
	execute highlightstr
endfunction

"TODO
let s:builtin="#ff5f00"
call Coloring("Normal", "#333333", "#EEEEEE", "NONE", "237", "255") "Light Grey fg, dg background
call Coloring("Keyword", "NONE", "#FF00FF", "NONE", "NONE", "13") "Bright Purple
call Coloring("Constant", "NONE", "#00d7ff", "NONE", "NONE", "45") "Turquise not quite cyan
call Coloring("Comment", "NONE", "#00FFAF", "NONE", "NONE", "49") "Bright green
call Coloring("Function", "NONE", "#875FFF", "NONE", "NONE", "99") " Purpley
call Coloring("String", "NONE", "#FFFF00", "NONE", "NONE", "226") "BRIGHT yellow
call Coloring("Type", "NONE", "#87FFFF", "NONE", "NONE", "87") "Cyan, with a green tinge
call Coloring("Label", "NONE", "#D7FF00", "NONE", "NONE", "190") "Bright Yellow-green
call Coloring("WarningMsg", "#D7AF00", "#EEEEEE", "NONE", "178", "238") " Orange BG, Grey fg
call Coloring("ErrorMsg", "#D70000", "#FFFFFF", "NONE", "160", "15") " Darker Red FG, White Text
call Coloring("Cursor", "#FFFF00", "#EEEEEE", "NONE", "226", "238") " Yellow BG, grey fg
call Coloring("LineNr", "NONE", "#FFD700", "NONE", "NONE", "220") "Bright yellow
call Coloring("Statement", "NONE", "#00FF00", "NONE", "NONE", "46") " lime green

exe 'hi link Boolean Constant'
exe 'hi link Conditional Keyword'
exe 'hi link Float Constant'
exe 'hi link Todo ErrorMsg'
exe 'hi link Character Constant'
exe 'hi link Identifier Type'
exe 'hi link Number Constant'
exe 'hi link Operator Type'
exe 'hi link Special ErrorMsg'
exe 'hi link Tag Keyword'
exe 'hi link Statement Keyword'

" python
exe 'hi link pythonNumber Constant'
" vim maps
exe 'hi link vimExecute Keyword'
exe 'hi link vimCommand Keyword'
exe 'hi link vimFunc Keyword'
exe 'hi link vimMap Label'
exe 'hi link vimVar Type'
"other shit
exe 'hi Underlined gui=underline'

" netdtree
exe 'hi link NERDTreeCWD Keyword'
