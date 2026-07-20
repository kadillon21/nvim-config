require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "eslint", "bashls", "gopls"}
vim.lsp.enable(servers)
vim.lsp.enable("jdtls")
-- read :h vim.lsp.config for changing options of lsp servers 
