require "nvchad.options"

-- add yours here!
vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.number = true
    vim.opt.relativenumber = true
  end,
})
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      client.server_capabilities.signatureHelpProvider = nil
    end
  end,
})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format()
  end,
})
require("nvim-autopairs").setup({ check_ts = true })
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
