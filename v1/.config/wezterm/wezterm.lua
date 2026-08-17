local wezterm = require("wezterm")
local constants = require("constants")
local scripts = require("scripts")
local config = wezterm.config_builder()

-- Font
config.font_size = 20
config.line_height = 1.2
config.font = wezterm.font("CaskaydiaCove Nerd Font")

-- Colors
config.colors = {
 cursor_bg = "white",
 cursor_border = "white",
 background = "#000000",
}
config.color_scheme = "Oceanic Next (Gogh)"

-- Appearance
config.window_decorations = "RESIZE"
config.foreground_text_hsb = {
  hue = 1.0,
  saturation = 1.2,
  brightness = 2,
}
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
-- config.window_background_image = constants.bg_image

-- Blur/Transparent Effect
config.macos_window_background_blur = 20
config.window_background_opacity = 0.75

-- Miscellaneous
config.mouse_bindings = constants.mouse_bindings
config.disable_default_key_bindings = true
config.keys = constants.key_bindings
config.max_fps = 120
config.prefer_egl = true

return config