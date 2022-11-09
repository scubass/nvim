require("impatient")
require("plugins")
require("mappings")
require("autocomands")
vim.cmd "set background=dark"
vim.cmd "colorscheme tokyonight"
vim.cmd "set nu"
vim.cmd "set relativenumber"
vim.cmd "set scrolloff=14"
vim.cmd "imap jj <Esc>"
vim.cmd "set updatetime=300"
vim.cmd "set clipboard+=unnamedplus"
vim.cmd "set guifont=Iosevka:h13"
vim.cmd "set nocompatible"
vim.cmd "filetype plugin on"
vim.cmd "syntax on"
vim.cmd "set termguicolors"
-- vim.cmd "set makeprg=gcc\\ -Wall\\ --pedantic\\ -std=c99\\ -o\\ %:p:r"

  require('aerial').setup()
