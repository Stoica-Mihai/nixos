-- Pull in wezterm API
local wezterm = require 'wezterm'

-- Holds configuration
local config = wezterm.config_builder()

-- Window size
config.initial_cols = 120
config.initial_rows = 30

-- Looks
config.color_scheme = "MaterialDesignColors"
config.window_background_opacity = 0.9
config.default_cursor_style = 'SteadyUnderline'
config.use_fancy_tab_bar = false
config.enable_tab_bar = false

-- Behavior
config.window_close_confirmation = 'AlwaysPrompt'

-- Font
config.font_size = 14

-- Shell definition
config.default_prog = { "/usr/bin/fish", "-l" }

-- Shortcuts
config.keys = {
    -- Split the current pane horizontally
    { key = "d", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    -- Split the current pane vertically
    { key = "d", mods="CTRL", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    -- Switch to the next pane
    { key = "RightArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Right"}},
    -- Switch to the previous pane
    { key = "LeftArrow", mods="CTRL", action=wezterm.action{ActivatePaneDirection="Left"}},
    -- Close the current pane
    { key = "x", mods="CTRL", action=wezterm.action{CloseCurrentPane={confirm=true}}},
    -- Fullscreen
    { key = "f", mods="SUPER", action="ToggleFullScreen" },
    { key = "UpArrow", mods = "ALT", action = wezterm.action.ScrollByPage(-1) },
    { key = "DownArrow", mods = "ALT", action = wezterm.action.ScrollByPage(1) }
}

-- Export config
return config
