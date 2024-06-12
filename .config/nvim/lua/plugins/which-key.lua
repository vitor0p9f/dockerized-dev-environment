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
      ["<leader>"] ={
        f = {
          name = "Telescope",
          f = {"<cmd>Telescope find_files<cr>","Find file"},
          r = {"<cmd>Telescope oldfiles<cr>","Recent files"},
          w = {"<cmd>Telescope live_grep<cr>","Find word"}
        },
        t = {
          name = "Tabs",
          f = {"<cmd>BufferPin<cr>","Toggle - Pin tab"},
          x = {"<cmd>BufferClose<cr>","Close active tab"},
          p = {"<cmd>BufferPrevious<cr>","Move to the previous tab"},
          n = {"<cmd>BufferNext<cr>","Move to the next tab"},
        },
        n = {
          name = "Neo-tree",
          t = {"<cmd>Neotree toggle<cr>","Toggle"},
          f = {"<cmd>Neotree focus<cr>","Focus"}
        },
        h = {
          name = "Hunk",
          r = {"<cmd>Gitsigns reset_hunk<cr>","Reset"},
          p = {"<cmd>Gitsigns preview_hunk<cr>","Preview"},
          b = {"<cmd>Gitsigns toggle_current_line_blame<cr>","Toggle line blame"}
        },
        l = {
          name = "Lazygit",
          r = {"<cmd>LazyGit<cr>","Run"}
        }
      },
    })
  end
}
