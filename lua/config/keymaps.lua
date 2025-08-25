-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

local function map(mode, lhs, rhs, desc, extra_opts)
  local opts = vim.tbl_extend("force", default_opts, { desc = desc }, extra_opts or {})
  keymap(mode, lhs, rhs, opts)
end

-- quit neovim
map("n", "<C-q>", ":wq<cr>", "Quit and Save")

-- live-server
map("n", "<leader>cb", ":LiveServerStart<cr>", "Start Live Server")
map("n", "<leader>cB", ":LiveServerStop<cr>", "Stop Live Server")
