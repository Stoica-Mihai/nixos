local wezterm = require 'wezterm';
local config = wezterm.config_builder()

config.color_scheme = "Batman"
config.initial_cols = 120
config.initial_rows = 28
config.font = wezterm.font "Fira Code"

config.keys = {
    {key="d", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="e", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="h", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Left"}},
    {key="l", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Right"}},
    {key="k", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Up"}},
    {key="j", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Down"}},
    {key="w", mods="CTRL|SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
}

return config
