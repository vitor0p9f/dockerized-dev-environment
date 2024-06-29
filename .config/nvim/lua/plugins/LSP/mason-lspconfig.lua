return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "elixirls",
        "tsserver",
        "lua_ls",
        "dockerls",
        "css_variables",
        "cssls",
      },
      automatic_installation = true,
    })
  end,
}
