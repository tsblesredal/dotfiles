-- share clipboard with OS
vim.opt.clipboard:append('unnamedplus,unnamed')

-- use 4-spaces indent
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- カーソルが画面端に達する3行手前でスクロールを行う
vim.opt.scrolloff = 3

-- move the cursor to the previous/next line across the first/last charactee
vim.opt.whichwrap = 'b,s,h,l,<,>,[,],~'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.ai = true
vim.opt.cursorline = true

vim.api.nvim_create_user_command(
    'InitLua',
    function()
        vim.cmd.edit(vim.fn.stdpath('config') .. '/init.lua')
    end,
    {}
)

require("config.lazy")
vim.cmd("colorscheme eldritch")
