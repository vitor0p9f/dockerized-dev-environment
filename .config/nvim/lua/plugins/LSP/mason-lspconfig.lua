return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = { "elixirls","tsserver" },
			automatic_installation = true,
		})
	end,
}
