return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    ft = "markdown",
    keys = {
      { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Obsidian search" },
      { "<leader>oo", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian quick switch" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      legacy_commands = false,
      workspaces = {
        {
          name = "second-brain",
          path = "~/vaults/second-brain",
        },
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      code = { style = "full" }, -- background + border, not just an icon
    },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      local function code_hl()
        vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "#1e1e2e" })
      end
      code_hl()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = code_hl })
    end,  },
  }
