-- Pull in the wezterm API
local wezterm = require 'wezterm'
local platform = "linux"

-- This will hold the configuration.
local config = wezterm.config_builder()
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  platform = "windows"
elseif wezterm.target_triple == 'x86_64-apple-darwin' then
  platform = "apple-intel"
elseif wezterm.target_triple == 'aarch64-apple-darwin' then
  platform = "apple-silicon"
end

-- This is where you actually apply your config choices

config.automatically_reload_config = true
config.default_prog = platform == "windows" and {"C:\\Program Files\\Git\\bin\\bash.exe", "-li"} or { "top" }

-- UI
config.max_fps = 120 -- this should not cause any problem for lower fps devices
config.color_scheme = 'Vs Code Dark+ (Gogh)'
config.enable_tab_bar = false
-- config.window_decorations = "RESIZE" -- bug in window10
config.window_close_confirmation = 'NeverPrompt'
config.default_cursor_style = 'SteadyBlock'

-- Font
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 11
config.line_height = 1.2

-- Smooth cursor movement configuration
config.cursor_blink_rate = 0  -- Disable blinking
config.cursor_blink_ease_in = 'Linear'
config.cursor_blink_ease_out = 'Linear'

-- and finally, return the configuration to wezterm
return config
