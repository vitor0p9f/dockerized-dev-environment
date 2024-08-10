return {
	"tomasky/bookmarks.nvim",
	event = "VimEnter",
	config = function()
		require("bookmarks").setup({
			save_file = vim.fn.expand("$HOME/.bookmarks"), -- bookmarks save file path
			keywords = {
				["@t"] = "", -- mark annotation startswith @t ,signs this icon as `Todo`
				["@w"] = "", -- mark annotation startswith @w ,signs this icon as `Warn`
				["@f"] = "󱌣", -- mark annotation startswith @f ,signs this icon as `Fix`
				["@n"] = "󰠮", -- mark annotation startswith @n ,signs this icon as `Note`
			},
		})

		require("telescope").load_extension("bookmarks")
	end,
}
