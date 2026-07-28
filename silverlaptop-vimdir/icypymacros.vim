let @c = "/%%y3f%"
"jump to and copy next variable name
let @v = "?%%ly3F%"
"jump to and copy previous variable name
let @s = 'f''yi''j0f:DA:"0pV:s/\\n/%%ENTER%%/geV:s/"/''/g'
"copy text in next double quotes and insert it into following line's status
"text
let @d = 'yi''j0f:DA:"0pV:s/\\n/%%ENTER%%/geV:s/"/''/g'
"copy text in previous/inside double quotes and insert it into following
"line's status text
let @b = '/%%d3f%"0p'
"replace next variable name with previously yanked text
let @n = '?%%lld4F%"0p'
"replace variable name with previously yanked text while inide the variable
"name

function! Jumptoline(num)
	let line_num = a:num
	if getline(1) =~ '^[LRI]'
		let line_num -= 1
	endif
	if line_num == 0
		normal! gg
		return
	endif
	if line_num == 1
		normal! gg/^L\|^R\|^I
		return
	endif
	normal! gg/^L\|^R\|^I
	execute "normal!" line_num-1 . "n"
	echom line_num-1
endfunction

	"echom "ij " . a:num-1 . " /^L\|^R\|^I"
	"execute "echom" "ij " . a:num-1 . " /^L\|^R\|^I"
	"normal! gg/^L\|^R\|^I
	"execute "normal!" a:num-1 . "n"

command! -nargs=1 Jtl call Jumptoline(<args>)

let @j = ':Jtl '
"using the j macro you can go to line number
"@j<ENTER>12
"goes to 12'th command of the script

command Wset :w | :!icyset "%"
