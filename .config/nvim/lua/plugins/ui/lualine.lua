return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  options = {
    theme = "tokyonight",
  },
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, {
      function()
        return "󰏩"
      end,
    })
  end,
}
