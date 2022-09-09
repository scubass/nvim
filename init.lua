require("plugins")
require("mappings")
require("autocomands")
require("lualine-config")
require("bufferline-config")
require("command-completition-config")
require("treesitter-config")
require("telescope-config")
require("mason-config")
require("lsp_config")
require("luasnip-config")
require("nnn-config")
require("dashboard-config")
require("org-config")
require("toggleterm-config")
vim.cmd "set background=dark"
vim.cmd "colorscheme dracula"
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
vim.cmd "set foldmethod=expr"
vim.cmd "set foldexpr=nvim_treesitter#foldexpr()"
