local toggleterm = require("toggleterm")
toggleterm.setup{
    direction = "float"
}
vim.keymap.set('t', '<A-t>', '<cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<A-t>', '<cmd>ToggleTerm<CR>')
