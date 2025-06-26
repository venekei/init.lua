return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup{
            direction = 'tab',
        }
        vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
    end
}
