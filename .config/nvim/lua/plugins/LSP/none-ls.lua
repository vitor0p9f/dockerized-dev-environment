return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.commitlint.with({
          prefer_local = "/root/.local/share/nvim/mason/bin/commitlint",
          extra_args = {
            "--config",
            "/root/.local/share/nvim/mason/packages/commitlint/commitlint.config.js",
          },
        }),
        null_ls.builtins.diagnostics.hadolint,
        null_ls.builtins.diagnostics.markdownlint,
      },
    })
  end,
}
