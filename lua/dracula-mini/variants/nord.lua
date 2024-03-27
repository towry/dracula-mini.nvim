local d = require("dracula-mini.utils").darken_wrap("#D8DEE9")

return {
  dark = {
    polar_night = {
      origin = "#2E3440", -- nord0
      bright = "#3B4252", -- nord1
      brighter = "#434C5E", -- nord2
      brightest = "#4C566A", -- nord3
      light = "#616E88", -- out of palette
    },
    snow_storm = {
      origin = "#D8DEE9", -- nord4
      brighter = "#E5E9F0", -- nord5
      brightest = "#ECEFF4", -- nord6
    },
    frost = {
      polar_water = "#8FBCBB", -- nord7
      ice = "#88C0D0", -- nord8
      artic_water = "#81A1C1", -- nord9
      artic_ocean = "#5E81AC", -- nord10
    },
    aurora = {
      red = "#BF616A", -- nord11
      orange = "#D08770", -- nord12
      yellow = "#EBCB8B", -- nord13
      green = "#A3BE8C", -- nord14
      purple = "#B48EAD", -- nord15
    },
    none = "NONE",
  },
  light = {
    polar_night = {
      origin = "#ECEEF4", -- nord4
      bright = "#E5E9F0", -- nord5
      brighter = "#D8DEE9", -- nord6
      brightest = "#616e88",
      light = "#4c566a",
    },
    snow_storm = {
      origin = "#2E3440", -- nord0
      brighter = "#434C5E", -- nord2
      brightest = "#4C566A", -- nord3
    },
    frost = {
      polar_water = d("#8FBCBB", 2), -- nord7
      ice = d("#88C0D0", 2), -- nord8
      artic_water = d("#81A1C1", 2), -- nord9
      artic_ocean = d("#5E81AC", 2), -- nord10
    },
    aurora = {
      red = d("#BF616A", 2), -- nord11
      orange = d("#D08770", 2), -- nord12
      yellow = d("#EBCB8B", 2), -- nord13
      green = d("#A3BE8C", 2), -- nord14
      purple = d("#B48EAD", 2), -- nord15
    },
    none = "NONE",
  },
}
