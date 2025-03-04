-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Pre Generate Mermaid Diagrams In Markdown
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.md",
  callback = function()
    vim.fn.system("mmdc -i " .. vim.fn.expand("%") .. " -o " .. vim.fn.expand("%:r") .. ".png")
  end,
})
