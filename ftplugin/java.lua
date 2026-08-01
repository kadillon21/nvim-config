local jdtls = require("jdtls")

local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
local bundles = {}
vim.list_extend(bundles, vim.split(vim.fn.glob(mason_packages .. "/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar"), "\n"))
vim.list_extend(bundles, vim.split(vim.fn.glob(mason_packages .. "/java-test/extension/server/*.jar"), "\n"))

local config = {
  cmd = {
    "jdtls",
    "-data",
    vim.fn.expand("~/.cache/jdtls/workspace/") .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
  },
  root_dir = require("jdtls.setup").find_root({ "pom.xml", "build.gradle", ".git" }),
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-25",
            path = "/Users/kendall/Library/Java/JavaVirtualMachines/loom-ea-25-loom+1-11/Contents/Home",
            default = true,
          },
        },
      },
    },
  },
  init_options = {
    bundles = bundles,
  },
}

jdtls.start_or_attach(config, { dap = { hotcodereplace = "auto" } })

vim.api.nvim_create_autocmd("LspAttach", {
  buffer = 0,
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "jdtls" then
      require("jdtls.dap").setup_dap_main_class_configs()
    end
  end,
})

vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.expandtab = true
