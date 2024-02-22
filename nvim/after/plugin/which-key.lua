local wk = require("which-key")

wk.register({
	f = {
		name = "file",
		f = { "<cmd>Telescope find_files<cr>", "Find file"},
		p = { "<cmd>Ex<cr>", "Previous file"}
	}
}, { prefix = " " })
