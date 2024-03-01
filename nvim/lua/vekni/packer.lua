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
use 'itchyny/lightline.vim'
use 'tpope/vim-fugitive'
use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true})
            ts_update()
        end,}
use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
        { 'neovim/nvim-lspconfig' },
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'}
    }

}
use("nvim-treesitter/nvim-treesitter-context")
use 'm4xshen/autoclose.nvim'
use({
    "folke/trouble.nvim",
})
use("akinsho/toggleterm.nvim")
use("mbbill/undotree")
use("Pocco81/auto-save.nvim")
end)
