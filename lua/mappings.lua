require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Go to definition" })
map("t", "<C-j>", "<Cmd>call feedkeys('\\<PageDown>')<CR>", { noremap = true, silent = true })
map("t", "<C-k>", "<Cmd>call feedkeys('\\<PageUp>')<CR>", { noremap = true, silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
