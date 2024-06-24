require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Go to definition" })
map("t", "<C-j>", "<Cmd>call feedkeys('\\<PageDown>')<CR>", { noremap = true, silent = true })
map("t", "<C-k>", "<Cmd>call feedkeys('\\<PageUp>')<CR>", { noremap = true, silent = true })

-- Nvim dap
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
map("n", "<leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map("n", "<leader>d<space>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map("n", "<leader>dd", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" })
map("n", "<leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })
map("n", "<F11>", "<Cmd>lua require'dap'.step_into()<CR>", { desc = "Step into" })
map("n", "<F10>", "<Cmd>lua require'dap'.step_over()<CR>", { desc = "Step over" })
map("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Toggle DAP UI" })
map("n", "<leader>dp", "<cmd>lua require'dap'.pause.toggle()<CR>", { desc = "Toggle pause" })
map("n", "<leader>do", "<cmd>lua require'dap'.repl.open()<CR>", { desc = "Open DAP REPL" })
map("n", "<leader>dw", "<cmd>lua require'dap.ui.widgets'.hover()<CR>", { desc = "Widgets hover" })
map("n", "<leader>df", "<cmd>lua require'dap.ui.widgets'.frames()<CR>", { desc = "Widgets frames" })
-- map("n", "<leader>ds", "<cmd>lua require'dap.ui.widgets'.scopes()<CR>", { desc = "Widgets scopes" })

-- C# debugging
map("n", "<F5>", "<Cmd>lua require'csharp'.debug_project()<CR>", { desc = "Debug Project" })
map("n", "<S-F5>", "<Cmd>lua require'csharp'.run_project()<CR>", { desc = "Run Project" })

-- compiler.nvim
map("n", "<leader>mm", vim.cmd.CompilerOpen, { desc = "Open compiler" })
map("n", "<leader>mr", vim.cmd.CompilerRedo, { desc = "Compiler redo" })
map("n", "<leader>mt", vim.cmd.CompilerToggleResults, { desc = "Compiler results" })
