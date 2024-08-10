return { 
	"catppuccin/nvim", 
	name = "catppuccin", 
	priority = 1000,
	lazy = false,
	config = function()
    require("catppuccin").setup({
      integrations = {
        barbar = true,
        noice = true,
        neotree = true
      }
    })

		vim.cmd.colorscheme "catppuccin-mocha"
	end
}
