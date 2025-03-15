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

  -- Color Scheme
  -- color_scheme = 'Gruvbox dark, hard (base16)',
  -- color_scheme = 'Urple',
  -- color_scheme = 'Purple People Eater (Gogh)',
  -- color_scheme = 'Neon Night (Gogh)',
  -- color_scheme = 'niji',
  -- color_scheme = 'Nord (Gogh)',
  -- color_scheme = 'Default (dark) (terminal.sexy)',
  color_scheme = 'Poimandres Storm',
  -- color_scheme = 'Dracula',
  -- color_scheme = 'Palenight (Gogh)',

  -- Font
  font = wezterm.font("FiraCode Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Hack Nerd Font", {weight="Bold", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Fira Code", {weight="Bold", stretch="Normal", style="Normal"}), 
  font_size = 14,

  -- Transparency
  window_background_opacity = 0.9,
  macos_window_background_blur = 20,

  -- Padding
  window_padding = {
    left = 3,
    right = 3,
    top = 0,
    bottom = 0,
  },
}

return config
