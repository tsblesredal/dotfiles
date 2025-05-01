return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
      require("neo-tree").setup({
        close_if_last_window = true, -- ファイラーだけになったら自動で閉じる
        popup_border_style = "rounded", -- ポップアップの角丸
        enable_git_status = true, -- Gitステータス表示
        enable_diagnostics = true, -- LSPエラー表示
        filesystem = {
          filtered_items = {
            hide_dotfiles = false, -- ドットファイル（.gitとか）を表示
            hide_gitignored = true, -- .gitignoreされたファイルは隠す
          },
          follow_current_file = {
            enabled = true, -- 今開いてるファイルに合わせてツリーを動かす
          },
          use_libuv_file_watcher = true, -- ファイルの変更を即座に反映
        },
        window = {
          position = "left", -- 左側に表示
          width = 30, -- 幅30
        },
        separator = true,
      })
    end,
  vim.keymap.set("n", "<S-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })
}
