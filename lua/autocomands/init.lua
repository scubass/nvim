vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]


vim.api.nvim_create_autocmd("FileType", {
	pattern= "c",
	callback = function ()
			vim.cmd("setlocal makeprg=gcc\\ -Wall\\ --pedantic\\ -std=c99\\ -o\\ %:p:r\\ -lm")
	end,
})

-- cuidado con correr un archivo que piede getnum dentro de vim directamente con !./nombre del ejecutabe
vim.api.nvim_create_user_command("GetNum", function ()
	print "primer comand escrito en lua señor"
	local command = vim.cmd("setlocal makeprg=gcc\\ -Wall\\ --pedantic\\ -std=c99\\ -o\\ %:p:r\\ -lm\\ ~/Facultad/PI/guias/getnum.c")
	local prints = print "hola esto es prints"

end, {})
