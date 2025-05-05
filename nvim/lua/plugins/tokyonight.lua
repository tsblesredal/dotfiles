return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
      transparent = true
  },
  config = function ()
    vim.cmd[[colorscheme tokyonight]]
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "none", fg = "#19dfcf" })
    TelescopeNormal = { fg = "#ebfafa", bg = "none" }
  end
}
