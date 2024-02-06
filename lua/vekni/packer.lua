require('packer').startup(function(use)
use {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	requires = { {'nvim-lua/plenary.nvim'} }
}
use {
	'catppuccin/nvim',
	as = 'catppuccin',
	config = function()
		vim.cmd('colorscheme catppuccin')
	end
} 
use {
	'folke/which-key.nvim',
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup {
		}
	end

}
use 'itchyny/lightline.vim'
use 'tpope/vim-fugitive'
end)
