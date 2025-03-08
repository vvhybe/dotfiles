-- [DOCS](https://github.com/rebelot/kanagawa.nvim)
return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  config = function()
    require("kanagawa").setup({
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" ! default is "wave"
        light = "lotus",
      },
    })
    vim.cmd.colorscheme("kanagawa")
  end,
}
