-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
  -- Window related
  automatically_reload_config = true,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  initial_rows = 50,
  initial_cols = 120,

  -- Color Scheme
  color_scheme = 'Gruvbox dark, soft (base16)',
  -- color_scheme = 'zenwritten_dark',
  -- color_scheme = 'Urple',
  -- color_scheme = 'Purple People Eater (Gogh)',

  -- Font
  font = wezterm.font("FiraCode Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Hack Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Fira Code", {weight="Bold", stretch="Normal", style="Normal"}), 
  font_size = 15,

  -- Transparency
  window_background_opacity = 0.95,
  -- macos_window_background_blur = 15,

  -- Padding
  window_padding = {
    left = 3,
    right = 3,
    top = 0,
    bottom = 0,
  },
}

return config
