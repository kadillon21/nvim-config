return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        enable = false,
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
        },
      })
      require("transparent").clear_prefix("NvimTree")
    end,
  },
}
