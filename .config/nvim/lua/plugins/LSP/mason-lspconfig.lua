return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = { "elixirls", "tsserver", "lua_ls" },
			automatic_installation = true,
		})
	end,
}
