return {
  "saecki/crates.nvim",
  event = { "BufRead Cargo.toml" }, -- only load when you actually open a Cargo.toml
  config = function()
    require("crates").setup({
      completion = {
        cmp = { enabled = true }, -- integrates with nvim-cmp for version autocomplete
      },
    })
  end,
}
