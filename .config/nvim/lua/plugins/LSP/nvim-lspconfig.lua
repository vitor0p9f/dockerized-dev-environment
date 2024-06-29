return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.elixirls.setup({
			capabilities = capabilities,
			cmd = { "/root/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
			root_dir = vim.loop.cwd,
		})

		lspconfig.tsserver.setup({
			capabilities = capabilities,
			init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
						languages = { "javascript", "typescript", "vue" },
					},
				},
			},
			filetypes = {
				"javascript",
				"typescript",
				"vue",
			},
		})

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			on_init = function(client)
				local path = client.workspace_folders[1].name

				if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
					return
				end

				client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
					runtime = {
						version = "LuaJIT",
					},
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME,
						},
					},
				})
			end,
			settings = {
				Lua = {},
			},
		})

		lspconfig.dockerls.setup({
			capabilities = capabilities,
		})

		lspconfig.nextls.setup({
			capabilities = capabilities,
			cmd = { "/root/.local/share/nvim/mason/packages/nextls/next_ls_linux_amd64", "--stdio" },
			root_dir = vim.loop.cwd,
			init_options = {
				extensions = {
					credo = { enable = true },
				},
				experimental = {
					completions = { enable = true },
				},
			},
		})
	end,
}
