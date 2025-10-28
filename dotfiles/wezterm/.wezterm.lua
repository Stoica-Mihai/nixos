-- Pull in wezterm API
local wezterm = require 'wezterm'

-- Holds configuration
local config = wezterm.config_builder()

-- Environment variables
config.set_environment_variables = {
  EDITOR = 'vim',
  STARSHIP_CONFIG = wezterm.home_dir .. '/.config/starship/starship.toml',
  ADFS_USER = '' -- email,
  fish_greeting = "", -- disable fish shell greeting
}

-- Window size
config.initial_cols = 120
config.initial_rows = 30

-- Looks
config.color_scheme = "Dracula"
config.window_background_opacity = 0.9
config.default_cursor_style = 'SteadyUnderline'
config.use_fancy_tab_bar = false
config.enable_tab_bar = false
config.window_padding = {
  left = 8,
  right = 8,
  top = 0,
  bottom = 8
}

-- Behavior
config.window_close_confirmation = 'AlwaysPrompt'
config.warn_about_missing_glyphs = false

-- Font
config.font = wezterm.font_with_fallback {
    {family="JetBrains Mono NL", weight="Medium"},
    'JetBrains Mono',
}
config.font_size = 12

-- Shell definition
config.default_prog = { "fish", "-l" }

-- Shortcuts
config.keys = {
    -- Split the current pane horizontally
    { key = "d", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    -- Split the current pane vertically
    { key = "h", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    -- Switch to the next pane
    { key = "RightArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Right"}},
    -- Switch to the previous pane
    { key = "LeftArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Left"}},
    -- Fullscreen
    { key = "f", mods="SUPER", action="ToggleFullScreen" },
    -- Scrolling
    { key = "UpArrow", mods = "CTRL", action = wezterm.action.ScrollByLine(-1) },
    { key = "DownArrow", mods = "CTRL", action = wezterm.action.ScrollByLine(1) }
}

-- Export config
return config
