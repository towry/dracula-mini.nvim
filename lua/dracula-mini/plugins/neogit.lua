local neogit = {}

local utils = require("dracula-mini.utils")

function neogit.highlights()
  local c = require("dracula-mini.colors").get_palette()

  return {
    NeogitDiffAdd = { fg = c.aurora.green, bg = c.polar_night.bright },
    NeogitDiffAddHighlight = { fg = c.aurora.green, bg = c.polar_night.bright },
    NeogitDiffChange = { fg = c.aurora.yellow, bg = c.polar_night.bright },
    NeogitDiffDelete = { fg = c.aurora.red, bg = c.polar_night.bright },
    NeogitDiffDeleteHighlight = { fg = c.aurora.red, bg = c.polar_night.bright },
    NeogitDiffText = { fg = c.frost.artic_water, bg = c.polar_night.bright },
    NeogitContextHighlight = { fg = c.frost.artic_water, bg = c.polar_night.bright },
    NeogitDiffContextHighlight = { fg = c.frost.artic_water, bg = c.polar_night.bright },
    NeogitHunkHeader = { fg = c.snow_storm.origin, bg = c.polar_night.brightest },
  }
end

return neogit
