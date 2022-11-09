vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]


vim.api.nvim_create_autocmd("FileType", {
	pattern= "c",
	callback = function ()
			vim.cmd("setlocal makeprg=gcc\\ -Wall\\ --pedantic\\ -std=c99\\ -o\\ %:p:r\\ -lm\\ -fsanitize=address\\ -g")
	end,
})

vim.api.nvim_create_user_command("TList", function()
	local command = vim.cmd("setlocal makeprg=gcc\\ -Wall\\ --pedantic\\ -std=c99\\ -o\\ %:p:r\\ ~/Facultad/PI/guias/guia10/listas.c\\ ~/Facultad/PI/guias/guia10/utillist.c\\ -fsanitize=address")
end, {})

-- cuidado con correr un archivo que piede getnum dentro de vim directamente con !./nombre del ejecutabe
vim.api.nvim_create_user_command("GetNum", function ()
	local command = vim.cmd("setlocal makeprg=gcc\\ -Wall\\ --pedantic\\ -std=c99\\ -o\\ %:p:r\\ -lm\\ ~/Facultad/PI/guias/getnum.c")

end, {})
