return {
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
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
		defaults = {
				file_ignore_patterns = {
						"%.class$", "%.git$","%.jar$"
				},
		},
        extensions = {
				["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
						},
				},
				["fzf"] = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
				},
		})
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("fzf")
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fb", builtin.buffers)
		vim.keymap.set("n", "<leader>fg", builtin.grep_string)

	end},

}
