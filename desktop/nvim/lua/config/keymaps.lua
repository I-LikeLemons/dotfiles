vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd",vim.cmd.Ex)
vim.keymap.set("n", "<leader>/",vim.cmd.noh)
vim.keymap.set("n", "<leader>we",':lua vim.diagnostic.open_float()<CR>', {silent = true})
vim.keymap.set("n", "gd",vim.lsp.buf.definition, {})
