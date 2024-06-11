return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    
    wk.register({
      f = {
        name = "Telescope",
        f = {"<cmd>Telescope find_files<cr>","Find file"},
        r = {"<cmd>Telescope oldfiles<cr>","Recent files"},
        w = {"<cmd>Telescope live_grep<cr>","Find word"}
      }
    },{prefix = "<leader>"})
  end
}
