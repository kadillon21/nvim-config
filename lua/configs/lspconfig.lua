require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "eslint", "bashls", "gopls", "pyright", "ruff", "terraformls" }
vim.lsp.enable(servers)
-- jdtls is started via require("jdtls").start_or_attach in ftplugin/java.lua instead of vim.lsp.enable
-- read :h vim.lsp.config for changing options of lsp servers
