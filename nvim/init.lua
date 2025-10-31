require("config.options")
require("config.keymaps")
require("config.lazy")



vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('gdscript')

vim.lsp.config('lua_ls', {
    settings = {
	Lua = {
	    diagnostics = {disable = { "lowercase-global"},}
	}
    }
})
require('telescope').setup {
    pickers = {
	buffers = {
	    initial_mode = "normal"
	}
    }
}
vim.diagnostic.config({
    virtual_text = {
	true,
	severity = {min = vim.diagnostic.severity.WARN},
    },
    severity_sort = true,
    float = {
	style = 'minimal',
	border = 'rounded',
	header = '',
	prefix = '',
    },
    signs = {
	text = {
	    [vim.diagnostic.severity.ERROR] = '✘',
	    [vim.diagnostic.severity.WARN] = '▲',
	    [vim.diagnostic.severity.INFO] = '»',
	},
    },
})
