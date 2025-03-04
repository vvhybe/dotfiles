return {
  -- Mason (LSP installer)
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "pyright",
        "ts_ls",
      },
    },
  },

  -- TypeScript extras
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- JSON extras
  { import = "lazyvim.plugins.extras.lang.json" },
}
