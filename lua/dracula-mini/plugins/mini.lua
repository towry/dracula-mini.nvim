local mini = {}

function mini.highlights()
  local c = require("dracula-mini.colors").get_palette()

  return {
    MiniIndentscopeSymbol = { fg = c.polar_night.brighter },
    MiniIndentscopePrefix = { nocombine = true },
  }
end

return mini
