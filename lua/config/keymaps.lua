vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Explorer"})
vim.keymap.set("n", "<leader>rr", "<cmd>Neotree reveal<CR>")

vim.keymap.set("n", "K", vim.lsp.buf.hover, {} )
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show diagnostic" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

