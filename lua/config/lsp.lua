vim.lsp.config('luals', {
    cmd = {'lua-language-server'},
    filetypes = {'lua'},
    root_markers = {'.luarc.json', '.luarc.jsonc'},
    settings = {
	Lua = {
	    runtime = {
		version = "LuaJIT",
	    },
	    diagnostics = {
		globals = { "vim" },
		disable = { "lowercase-global" },
	    },
	    workspace = {
		checkThirdParty = false,
		telemetry = { enable = false },
		library = {
		    "${3rd}/love2d/library",
		    "~/projects/love/snowgame",
		},
	    }
	}
    }
})
vim.lsp.config("rust_analyzer", {
    cmd = {"rust-analyzer"},
    filetypes = {'rust'},
    root_markers = {"Cargo.toml"}
})

vim.lsp.enable('luals')
vim.lsp.enable('rust_analyzer')


vim.diagnostic.config({
  -- Use the default configuration
  -- virtual_lines = true

  -- Alternatively, customize specific options
  virtual_lines = {
    -- Only show virtual line diagnostics for the current cursor line
    current_line = true,
    severity = {min = vim.diagnostic.severity.WARN }
  },
})
