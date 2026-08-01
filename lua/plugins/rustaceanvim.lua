return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  ft = { "rust" },
  config = function()
    vim.g.rustaceanvim = {
      server = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = true, -- boolean, not a table
            check = {
              command = "clippy", -- the command now lives here instead
            },
            cargo = { allFeatures = true },
          },
        },
      },
    }
  end,
}
