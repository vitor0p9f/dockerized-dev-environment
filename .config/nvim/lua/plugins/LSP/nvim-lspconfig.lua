return {
	"neovim/nvim-lspconfig",
  config = function()
		local lspconfig = require("lspconfig")

    lspconfig.elixirls.setup({
      cmd = { "/root/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
      root_dir = vim.loop.cwd
    })

    lspconfig.tsserver.setup{
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
            languages = {"javascript", "typescript", "vue"},
          },
        },
      },
      filetypes = {
        "javascript",
        "typescript",
        "vue",
      },
    }
  end
}
