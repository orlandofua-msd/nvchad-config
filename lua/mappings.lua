require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Go to definition" })
map("t", "<C-j>", "<Cmd>call feedkeys('\\<PageDown>')<CR>", { noremap = true, silent = true })
map("t", "<C-k>", "<Cmd>call feedkeys('\\<PageUp>')<CR>", { noremap = true, silent = true })

-- Nvim dap
map("n", "<leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<leader>d<leader>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<F12>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map("n", "<leader>d<space>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map("n", "<leader>dd", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { desc = "Debugger set conditional breakpoint" })
map("n", "<leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })
map("n", "<F11>", "<Cmd>lua require'dap'.step_into()", { desc = "Step into" })
map("n", "<F10>", "<Cmd>lua require'dap'.step_over()", { desc = "Step over" })
