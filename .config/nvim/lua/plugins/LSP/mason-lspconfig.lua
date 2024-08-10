return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lexical",
				"tsserver",
				"lua_ls",
				"dockerls",
				"css_variables",
				"cssls",
				"bashls",
			},
			automatic_installation = true,
		})
	end,
}
