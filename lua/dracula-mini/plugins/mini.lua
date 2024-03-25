local mini = {}

function mini.highlights()
  local c = require("dracula-mini.colors").get_palette()

  return {
    MiniIndentscopeSymbol = { fg = c.frost.artic_ocean },
    MiniIndentscopePrefix = { nocombine = true },
  }
end

return mini
