local wezterm = require 'wezterm'
local config = {}


config.color_scheme = 'Tokyo Night'

config.window_background_opacity = 0.75
config.font = wezterm.font("Moralerspace Neon NF", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 13.5
config.line_height = 1.3
config.ssh_domains = {}
config.enable_scroll_bar = true


return config

