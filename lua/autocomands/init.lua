vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]

--
-- vim.api.nvim_create_autocomd("FileType", {
-- 	pattern= "c",
-- 	callback = function ()
-- 		vim.schedule(function ()
-- 			vim.cmd("setlocal makeprg=gcc\\ -Wall\\ --pedantic\\ stc=c99")
-- 		end)
-- 	end,
-- })
--
