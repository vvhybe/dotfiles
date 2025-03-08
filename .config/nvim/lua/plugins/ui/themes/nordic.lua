-- [DOCS](https://github.com/AlexvZyl/nordic.nvim?tab=readme-ov-file#%EF%B8%8F-configuration)
return {
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    config = function()
      require("nordic").setup({
        cursorline = {
          theme = "dark",
        },
        telescope = {
          style = "classic",
        },
      })
      -- require('nordic').load()
      vim.cmd.colorscheme("nordic")
    end,
  },
}
