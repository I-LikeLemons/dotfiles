return {
    {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
	    vim.cmd("colorscheme rose-pine-moon")
	end
    },
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
	    theme = 'rose-pine-moon',
	},
    },
}
