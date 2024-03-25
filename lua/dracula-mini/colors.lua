local colors = {}

local defaults = {
  polar_night = {
    origin = "#282A36", -- nord0
    bright = "#454E6D", -- nord1
    brighter = "#546089", -- nord2
    brightest = "#5B6997", -- nord3
    light = "#6272A4", -- out of palette
  },
  snow_storm = {
    origin = "#D8DEE9", -- nord4
    -- #BBC3D8
    brighter = "#9DA8C7", -- nord5
    brightest = "#808DB5", -- nord6
  },
  frost = {
    polar_water = "#50FA7B", -- nord7
    ice = "#8BE9FD", -- nord8
    artic_water = "#D6ACFF", -- nord9
    artic_ocean = "#6272A4", -- nord10
  },
  aurora = {
    red = "#FF5555", -- nord11
    orange = "#FFB86C", -- nord12
    yellow = "#F1FA8C", -- nord13
    green = "#A3BE8C", -- nord14
    purple = "#BD93F9", -- nord15
  },
  none = "NONE",
}

colors.palette = defaults
colors.default_bg = "#282A36" -- nord0

function colors.daltonize(severity)
  local daltonize = require("dracula-mini.utils.colorblind").daltonize

  for group, color in pairs(defaults) do
    if type(color) == "table" then
      for sub_group, sub_color in pairs(color) do
        colors.palette[group][sub_group] = daltonize(sub_color, severity)
      end
    end
  end
end

return colors
