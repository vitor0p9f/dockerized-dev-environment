return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		local bm = require("bookmarks")

		wk.register({
			["<leader>"] = {
				f = {
					name = "Telescope",
					f = { "<cmd>Telescope find_files<cr>", "Find file" },
					r = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
					w = { "<cmd>Telescope live_grep<cr>", "Find word" },
				},
				t = {
					name = "Tabs",
					f = { "<cmd>BufferPin<cr>", "Toggle - Pin tab" },
					x = { "<cmd>BufferClose<cr>", "Close active tab" },
					p = { "<cmd>BufferPrevious<cr>", "Move to the previous tab" },
					n = { "<cmd>BufferNext<cr>", "Move to the next tab" },
				},
				n = {
					name = "Neo-tree",
					t = { "<cmd>Neotree toggle<cr>", "Toggle" },
					f = { "<cmd>Neotree focus<cr>", "Focus" },
				},
				h = {
					name = "Hunk",
					r = { "<cmd>Gitsigns reset_hunk<cr>", "Reset" },
					p = { "<cmd>Gitsigns preview_hunk<cr>", "Preview" },
					b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle line blame" },
				},
				l = {
					name = "Lazygit",
					r = { "<cmd>LazyGit<cr>", "Run" },
				},
				d = {
					name = "Diagnostics",
					t = { "<cmd>Trouble diagnostics toggle<cr>", "Toggle trouble" },
				},
				b = {
					name = "Buffer",
					d = { "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", "Diagnostics" },
					f = { vim.lsp.buf.format, "Format" },
					a = { vim.lsp.buf.code_action, "Show code actions for the line under the cursor" },
				},
				u = {
					name = "Utils",
					b = {
						name = "Bookmarks",
						t = { bm.bookmark_toggle, "Toggle bookmark" },
						a = { bm.bookmark_ann, "Annotate bookmark" },
						x = { bm.bookmark_toggle, "Delete all bookmarks from current buffer" },
						l = { bm.bookmark_list, "Show bookmarks list" },
					},
					i = { "<cmd>IconPickerNormal<cr>", "Pick icons or symbols" },
				},
			},
		})
	end,
}
