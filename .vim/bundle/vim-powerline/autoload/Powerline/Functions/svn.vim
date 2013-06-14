function! Powerline#Functions#svn#GetBranch(symbol) " {{{
"	let ret = fugitive#statusline()
	let ret = SVNGetStatusLine()

"	let ret = substitute(ret, '\c\v\[?SVN\(([a-z0-9\-_\./:]+)\)\]?', a:symbol .' \1', 'g')

	return ret
endfunction " }}}
