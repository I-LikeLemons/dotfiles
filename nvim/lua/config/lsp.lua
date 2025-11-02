vim.lsp.config('lua_ls', {
    settings = {
	Lua = {
	    diagnostics = {disable = { "lowercase-global"},globals = {'vim'}}
	}
    }
})

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
