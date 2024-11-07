return {
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
				local c = require("nvim-treesitter.configs")
				c.setup ({
						ensure_installed = {"java", "groovy", "lua", "go", "gomod", "nix", "make", "bash", "yaml"},
				})
		end
}
