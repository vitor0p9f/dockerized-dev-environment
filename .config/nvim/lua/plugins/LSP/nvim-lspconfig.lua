return {
	"neovim/nvim-lspconfig",
  config = function()
		local lspconfig = require("lspconfig")

    lspconfig.elixirls.setup({
      cmd = { "/root/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
      root_dir = vim.loop.cwd
    })
  end
}
