return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find Files' }),
    vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live Grep' }),
    vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Buffers' }),
    vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help Tags' }),
    opts = {
            defaults = {
                -- 幅と高さを拡げる設定
                layout_strategy = "horizontal",
                layout_config = {
                    width = 0.95,        -- 画面幅の95%
                    height = 0.95,       -- 画面高さの95%
                    preview_width = 0.5, -- プレビューの幅（全体の50%）
                    prompt_position = "bottom",
                },
            },
    }
}
