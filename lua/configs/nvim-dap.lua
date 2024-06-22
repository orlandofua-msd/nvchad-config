local dap = require("dap")

local lldb = {
  adapter = {
    type = "executable",
    command = "/usr/bin/lldb-vscode",
    name = "lldb",
  },
  config = {
    {
      name = "Launch",
      type = "lldb",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
      args = function()
        local argument_string = vim.fn.input("Program arguments: ")
        return vim.fn.split(argument_string, " ", true)
      end,
    }
  }
}

dap.adapters.lldb = lldb.adapter

dap.configurations.c = lldb.config
dap.configurations.cpp = lldb.config
dap.configurations.rust = lldb.config

dap.adapters.coreclr = {
  type = 'executable',
  command = vim.fn.stdpath('data') .. '/mason/packages/netcoredbg/netcoredbg',
  args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
  {
    type = 'coreclr',
    name = 'launch - netcoredbg',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to DLL or executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}
