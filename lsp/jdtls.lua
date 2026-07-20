---@type vim.lsp.Config
return {
  cmd = {
    "jdtls",
    "-data",
    vim.fn.expand("~/.cache/jdtls/workspace/") .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
  },
  root_markers = { "pom.xml", "build.gradle", ".git" },
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
}
