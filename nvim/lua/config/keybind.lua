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

-- lsp
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "診断を表示" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "前の診断" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "次の診断" })

