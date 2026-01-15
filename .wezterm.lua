local wezterm = require 'wezterm'
local config = {}
local act = wezterm.action

config.scrollback_lines = 5000
config.audible_bell = 'Disabled'
config.check_for_updates = false
config.window_close_confirmation = 'NeverPrompt'

config.max_fps = 120
config.animation_fps = 60
config.front_end = 'WebGpu'

config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'One Half Black (Gogh)'
config.window_background_image_hsb = {
  brightness = 0.3
}
config.background = {
  {
    source = {
      File = 'C:\\Users\\Nick\\Pictures\\backgound.png'
    },
    attachment = 'Fixed',
    hsb = {
      brightness = 0.15,
    }
  }
}
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

config.default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' }

config.keys = {
  { key = "\\", mods = "CTRL", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
  { key = "-",  mods = "CTRL", action = act.SplitVertical   { domain = "CurrentPaneDomain" } },
  { key = "h", mods = "CTRL", action = act.ActivatePaneDirection "Left" },
  { key = "l", mods = "CTRL", action = act.ActivatePaneDirection "Right" },
  { key = "k", mods = "CTRL", action = act.ActivatePaneDirection "Up" },
  { key = "j", mods = "CTRL", action = act.ActivatePaneDirection "Down" },
  { key = "w", mods = "CTRL", action = act.CloseCurrentPane { confirm = false } },
  { key = "n", mods = "CTRL", action = act.ShowLauncher },
}

for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = "CTRL",
    action = act.ActivateTab(i - 1),
  })
end

table.insert(config.keys, {
  key = "Tab",
  mods = "CTRL",
  action = act.ActivateTabRelative(1),
})

table.insert(config.keys, {
  key = "Tab",
  mods = "CTRL|SHIFT",
  action = act.ActivateTabRelative(-1),
})

return config
