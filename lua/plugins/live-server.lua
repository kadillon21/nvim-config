return {
  {
    "barrettruth/live-server.nvim",
    ft = { "html", "css", "javascript" },
    config = function()
      vim.g.live_server = {
        port = 8080,
        browser = true,
      }
    end,
  },
}
