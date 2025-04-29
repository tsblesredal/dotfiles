local function load_colors()
    local colors = {}
    local colorscheme_file = os.getenv("HOME") .. "/.config/colorscheme.sh"

    local file = io.open(colorscheme_file, "r")
 
    for line in file:lines() do
        if not line:match("^%s*#") and not line:match("^%s*$") and not line:match("^wallpaper=") then
            local name, value = line:match("^(%S+)=%s*(.+)")
            if name and value then
                colors[name] = value:gsub('"', "")
            end
        end
  end

  file:close()
  return colors
end

-- Load colors when the module is required
local colors = load_colors()

-- Check if the 'vim' global exists (i.e., if running in Neovim)
if _G.vim then
  for name, hex in pairs(colors) do
    vim.api.nvim_set_hl(0, name, { fg = hex })
  end
end

-- Return the colors table for external usage (like wezterm)
return colors
