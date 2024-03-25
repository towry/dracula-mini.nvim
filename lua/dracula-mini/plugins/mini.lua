local mini = {}

local c = require("dracula-mini.colors").get_palette()

function mini.highlights()
  return {
    MiniIndentscopeSymbol = { fg = c.frost.artic_ocean },
    MiniIndentscopePrefix = { nocombine = true },
  }
end

return mini
