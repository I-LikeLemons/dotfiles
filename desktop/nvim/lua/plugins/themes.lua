local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end
return {
    {
	"shaunsingh/nord.nvim",
	config = function()
	    require("vague").setup({
		colors = {
		    bg = "#080808",
		},
	    })
	    vim.cmd("colorscheme vague")
	end,
    },
    { "bluz71/vim-moonfly-colors",
	name = "moonfly",
	lazy = false,
	priority = 1000 
    },
    {
	"vague-theme/vague.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other plugins
    },
    {
	"morhetz/gruvbox",
	name = "gruvbox",
    },
}
