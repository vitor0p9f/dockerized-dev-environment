return {
	"jay-babu/mason-null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("mason-null-ls").setup({
			ensure_installed = { "stylua", "prettier", "commitlint", "hadolint", "nextls" },
			automatic_installation = true,
		})
	end,
}
