-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- Redo
vim.keymap.set("n", "U", ":redo<cr>", { noremap = true, silent = true, desc = "Redo" })

-- Map moving lines to Ctrl+Shift+Up/Down
vim.keymap.set("n", "<C-S-Up>", ":m -2<cr>", { noremap = true, silent = true, desc = "Move line up" })
vim.keymap.set("n", "<C-S-Down>", ":m +1<cr>", { noremap = true, silent = true, desc = "Move line down" })
