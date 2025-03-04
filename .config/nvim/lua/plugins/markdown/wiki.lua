return {
  "vimwiki/vimwiki",
  lazy = false,
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/wiki", -- Path to your wiki directory
        syntax = "markdown",
        ext = ".md",
      },
    }
    vim.g.vimwiki_global_ext = 0 -- Disable Vimwiki for non-wiki files
  end,
  name = "wiki", -- Name of the menu
  -- icon = " ",
  -- keys = {
  --   {
  --     "<leader>kw",
  --     "<cmd>VimwikiIndex<CR>",
  --     -- icon = "",
  --     desc = "Open Wiki Index",
  --   },
  --   {
  --     "<leader>kn",
  --     ":VimwikiMakeDiaryNote<CR>",
  --     -- icon = "",
  --     desc = "Open Wiki Daily Notes",
  --   },
  --   {
  --     "<leader>ks",
  --     ":Telescope find_files cwd=~/wiki<CR>",
  --     -- icon = "",
  --     desc = "Search Wiki files with Telescope",
  --   },
  --   {
  --     "<leader>mp",
  --     ":Glow<CR>",
  --     -- icon = "",
  --     desc = "Toggle Markdown preview with glow",
  --     noremap = true,
  --     silent = true,
  --   },
  -- },
}
