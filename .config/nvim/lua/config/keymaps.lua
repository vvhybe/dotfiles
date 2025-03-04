-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

------ ## EDITOR
---
--- set jk to escape
keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

--- Telescope Find Files

keymap.set("n", "<leader>fp", "<cmd>Telescope find_files<cr>", {
  desc = "Find Plugin File",
})

------ ## GIT
---
--- Diffview
keymap.set("n", "<leader>gd", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd("DiffviewOpen")
  else
    vim.cmd("DiffviewClose")
  end
end, {
  desc = "Git Toggle Diffview",
})

--- LAZYGIT

------ ## MARKDOWN
---
--- Markdown preview with glow
keymap.set("n", "<leader>mp", ":Glow<CR>", {
  desc = "Markdown Preview with glow",
  noremap = true,
  silent = true,
})

--- WIKI
keymap.set("n", "<leader>ki", "<cmd>VimwikiIndex<CR>", { desc = "Wiki Index" })
keymap.set("n", "<leader>kt", "<cmd>VimwikiTabIndex<CR>", { desc = "Wiki Open in Tab" })
keymap.set("n", "<leader>ks", "<cmd>VimwikiUISelect<CR>", { desc = "Wiki Selection" })
keymap.set("n", "<leader>kd", "<cmd>VimwikiDiaryIndex<CR>", { desc = "Wiki Diary Index" })
keymap.set("n", "<leader>kn", "<cmd>VimwikiMakeDiaryNote<CR>", { desc = "Wiki New Diary Note" })
keymap.set("n", "<leader>kl", "<cmd>VimwikiGenerateLinks<CR>", { desc = "Wiki Generate Links" })
keymap.set("n", "<leader>kh", "<cmd>Vimwiki2HTML<CR>", { desc = "Wiki Convert to HTML" })
