local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n","<up>", "<C-w><up>", { noremap = false })

keymap("n","<down>", "<C-w><down>", { noremap = false })

keymap("n","<left>", "<C-w><left>", { noremap = false })

keymap("n","<right>", "<C-w><right>", { noremap = false })

keymap("t","jj", "<C-\\><C-n>", opts)


-- Telescope
keymap("n", "<leader>t", "<cmd>Telescope find_files theme=dropdown<cr>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", opts)
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fm", "<cmd>Telescope man_pages<cr>", opts)
keymap("n", "<leader>f.", "<cmd>Telescope find_files search_dirs={'~/.config/nvim'}<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files search_dirs={'~/Facultad/PI/'}<cr>", opts)
keymap("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", opts)

-- Nnn
-- open nnn in current buffer file directory
keymap("n", "<leader>nb", "<cmd>NnnPicker %:p:h<cr>", opts)
-- open nnn in home folder
keymap("n", "<leader>nh", "<cmd>NnnPicker ~/<cr>", opts)

keymap("n", "<leader>C", "<cmd>make %<cr>", opts)
keymap("n", "<leader>S", "<cmd>source %<cr>", opts)

-- https://www.youtube.com/watch?v=k_PBlhH-DKk&list=LL&index=1
keymap("n", "<leader>z", ":%s/<C-R><C-W>/<C-R>0/g<CR>", opts)


-- Packer
keymap("n", "<leader>z", "<cmd>PackerUpdate<cr>", opts)


-- better windows resize

keymap("n", "<C-Up>", "<cmd>resize +2<cr>", opts)
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", opts)
keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts)


--buffer commands
keymap("n", "<S-l>", "<cmd>bnext<cr>", opts)
keymap("n", "<S-h>", "<cmd>bprevious<cr>", opts)
keymap("n", "<leader>q", "<cmd>Bdelete<cr>", opts)


-- En visual mode c entra en insert mode mientras remueve lo que seleccionaste
