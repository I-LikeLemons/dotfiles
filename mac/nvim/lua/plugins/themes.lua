local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
    vim.api.nvim_set_hl(0, "signColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
end
return {
    {
	"shaunsingh/nord.nvim",
	config = function()
	    vim.cmd("colorscheme gruvbox")
	    enable_transparency()
	end,
    },
    {
	"nyoom-engineering/oxocarbon.nvim"
    },
    {
	"morhetz/gruvbox",
	name = "gruvbox",
    },
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
	    theme = 'nord',
	},
    },
}
