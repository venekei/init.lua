vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>=", "<cmd>normal gg=G<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>bd!<CR>")
vim.keymap.set("n", "<leader>bs", "<cmd>w<CR>bd<CR>")
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>")

-- diff tool keybindings --
vim.api.nvim_set_keymap("n", "<leader>nc", "]c", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>pc", "[c", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>dg", "<cmd>diffget<cr>")
vim.keymap.set("n", "<leader>dp", "<cmd>diffput<cr>")

-- merge too keybindings --
vim.keymap.set("n", "<leader>gl", "<cmd>diffget LOCAL<cr>")
vim.keymap.set("n", "<leader>gr", "<cmd>diffget REMOTE<cr>")
