local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
-- <Leader>h/j/k/l でウィンドウ移動
map("n", "<Leader>h", "<C-w>h", opts)
map("n", "<Leader>j", "<C-w>j", opts)
map("n", "<Leader>k", "<C-w>k", opts)
map("n", "<Leader>l", "<C-w>l", opts)
-- ターミナル設定(Escでノーマルモードへ)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
