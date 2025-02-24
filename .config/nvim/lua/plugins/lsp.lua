return {
  -- LSP configuration
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       pyright = {},
  --       tsserver = {},
  --     },
  --     setup = {
  --       tsserver = function(_, opts)
  --         require("typescript").setup({ server = opts })
  --         return true
  --       end,
  --     },
  --   },
  -- },

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
        "tsserver",
      },
    },
  },

  -- TypeScript extras
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- JSON extras
  { import = "lazyvim.plugins.extras.lang.json" },
}
