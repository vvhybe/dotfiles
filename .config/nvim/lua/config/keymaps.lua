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
---
keymap.set("n", "<leader>ki", "<cmd>WikiIndex<CR>", { desc = "Wiki Index" })

keymap.set("n", "<leader>ksP", "<cmd>WikiPages<CR>", { desc = "Wiki Pages" })
keymap.set("n", "<leader>ksp", "<cmd>WikiFzfPages<CR>", { desc = "Wiki Find Pages" })
keymap.set("n", "<leader>ksT", "<cmd>WikiTags<CR>", { desc = "Wiki Tags" })
keymap.set("n", "<leader>kst", "<cmd>WikiFzfTags<CR>", { desc = "Wiki Find Tags" })
keymap.set("n", "<leader>ksc", "<cmd>WikiToc<CR>", { desc = "Wiki Table of Contents" })

keymap.set("n", "<leader>kt", "<cmd>WikiTocGenerate<CR>", { desc = "Wiki Generate Table of Contents" })

keymap.set("n", "<leader>kd", "<cmd>WikiJournal<CR>", { desc = "Wiki Diary" })
keymap.set("n", "<leader>kn", "<cmd>WikiJournalNew<CR>", { desc = "Wiki New Diary" })

keymap.set("n", "<leader>kl", "<cmd>WikiLinkIncomingToggle<CR>", { desc = "Wiki Display Incoming Links" })
keymap.set("n", "<leader>ke", "<cmd>WikiExport<CR>", { desc = "Wiki Export" })
