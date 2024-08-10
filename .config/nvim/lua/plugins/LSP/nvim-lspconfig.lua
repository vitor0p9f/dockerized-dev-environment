return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.lexical.setup({
			capabilities = capabilities,
			root_dir = function(fname)
				return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
			end,
			cmd = { "/root/.local/share/nvim/mason/packages/lexical/lexical" },
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

		lspconfig.css_variables.setup({
			root_dir = vim.loop.cwd,
		})

		lspconfig.cssls.setup({
			capabilities = capabilities,
			root_dir = vim.loop.cwd,
		})
	end,
}
