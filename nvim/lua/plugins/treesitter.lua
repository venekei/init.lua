return {
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
				local c = require("nvim-treesitter.configs")
				c.setup ({
						auto_install = true
				})
		end
}
