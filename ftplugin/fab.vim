if exists("b:did_ftplugin")
	finish
endif

augroup fab.vim
	autocmd!

	setlocal tabstop=4 shiftwidth=4
	setlocal textwidth=90
augroup END
