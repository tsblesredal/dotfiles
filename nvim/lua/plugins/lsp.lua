vim.filetype.add({
    extension = {
        tf = "terraform",
    },
})
return {
        {
            "williamboman/mason.nvim",
            config = function()
                require("mason").setup()
            end,
        },
        {
            "williamboman/mason-lspconfig.nvim",
            config = function()
                require("mason-lspconfig").setup({
                    ensure_installed = { "pyright", "lua_ls", "terraformls", "bashls", "marksman" },
                })
            end,
        },
        {
            "neovim/nvim-lspconfig",
            config = function()
                local lspconfig = require("lspconfig")
                lspconfig.pyright.setup({})
                lspconfig.lua_ls.setup({})
                lspconfig.terraformls.setup({})
                lspconfig.bashls.setup({})
                lspconfig.marksman.setup({})
            end,
        },
        {
            "hrsh7th/nvim-cmp",
            dependencies = {
                "hrsh7th/cmp-nvim-lsp", -- LSP補完の情報元
            },
            config = function()
                local cmp = require("cmp")
                cmp.setup({
                    mapping = cmp.mapping.preset.insert({
                        ["<Tab>"] = cmp.mapping.select_next_item(),
                        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                        ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    }),
                    sources = {
                        { name = "nvim_lsp" },
                    },
                })
            end,
        },
        {
            "windwp/nvim-autopairs",
            event = "InsertEnter", -- 挿入モード時に読み込み
            config = function()
                require("nvim-autopairs").setup({})
            end,
        },
    },
    vim.diagnostic.config({
        virtual_text = true, -- 行内にエラーを表示
        signs = true,   -- 行番号横にアイコン
        float = {
            border = "rounded", -- 浮動ポップアップに枠を付ける
            source = "always",
        },
        update_in_insert = false, -- Insert中は更新しない（集中しやすい）
    })
