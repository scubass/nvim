
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>e", "<cmd>lua print(\"Hello\")<cr>", opts)

print("Hello from a lua file")
