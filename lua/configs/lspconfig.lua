-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "emmet_ls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.omnisharp.setup {
  cmd = { "dotnet", vim.fn.stdpath("data") .. "\\mason\\packages\\omnisharp\\libexec\\OmniSharp.dll" },
  enable_editorconfig_support = true,
  enable_roslyn_analyzers = true,
  enable_import_completion = true,
  organize_imports_on_format = true,
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
