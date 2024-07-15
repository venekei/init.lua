vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>=", "<cmd>normal gg=G<CR>")
vim.keymap.set("n", "<leader>cb", "<cmd>bd!<CR>")
vim.keymap.set("n", "<leader>sb", "<cmd>w<CR>bd<CR>")
vim.keymap.set("n", "<leader>nb", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>pb", "<cmd>bprevious<CR>")
