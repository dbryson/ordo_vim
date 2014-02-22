" Vim plugin for decrypting gpg encrypted files
" Last Change:  2005 Feb 28
" Maintainer:   David Bryson <david@statichacks.org>
" License: This script is licensed under the GPLv2

if exists("loaded_ordo")
	finish
endif
let loaded_ordo = 1

function! GPG_decrypt()
	setlocal noswapfile

	let decrypt = confirm("Decrypt File ?", "&yes\n&no",1)

	if decrypt == 1
		%!gpg -q -d
		:redraw
	endif
endfunction

function! GPG_encrypt()
	setlocal noswapfile
		%!gpg -q -e --textmode --armor
	":bdelete! %

endfunction

au BufRead *.gpg		:call GPG_decrypt()
au BufWrite *.gpg		:call GPG_encrypt()
