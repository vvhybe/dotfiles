return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fp", "<cmd>Telescope find_files<cr>", desc = "Find Plugin File" },
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
