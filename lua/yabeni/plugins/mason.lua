return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "codelldb",
        "clang-format",
        "rust_analyzer",
        "clangd",
        "cmake",
        "cortex-debug",
        "cpplint",
        "lua_ls",
      }
    }
  }
}
