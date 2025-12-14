require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.lsp")
require("config.godot")

require('telescope').setup {
    defaults = {
	file_ignore_patterns = {
	    "lib/",
	    "build/",
	}
    },
}
