local picker = {}

local utils = require("dracula-mini.utils")

function picker.highlights()
  local c = require("dracula-mini.colors").get_palette()

  return {
    TelescopeBorder = { fg = c.polar_night.light, bg = utils.make_global_bg(true) },
    TelescopeTitle = { fg = c.snow_storm.origin, bold = true },
    TelescopePromptCounter = { fg = c.polar_night.light },
    TelescopeMatching = { fg = c.frost.ice, bold = true },
  }
end

return picker
