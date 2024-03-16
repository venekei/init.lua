return {
		{
				"nvim-telescope/telescope-ui-select.nvim"
		},
		{
				"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		require("telescope").setup({
        extensions = {
				["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
						},
				},
		})
		require("telescope").load_extension("ui-select")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files)
	end},

}
