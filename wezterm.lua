-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.automatically_reload_config = true
config.default_prog = {"C:\\Program Files\\Git\\bin\\bash.exe", "-li"}

-- UI
config.color_scheme = 'Catppuccin Mocha'
config.enable_tab_bar = false
-- config.window_decorations = "RESIZE" -- bug in window10
config.window_close_confirmation = 'NeverPrompt'
config.default_cursor_style = 'SteadyBlock'

-- Smooth cursor movement configuration
config.cursor_blink_rate = 0  -- Disable blinking
config.cursor_blink_ease_in = 'Linear'
config.cursor_blink_ease_out = 'Linear'

-- and finally, return the configuration to wezterm
return config
