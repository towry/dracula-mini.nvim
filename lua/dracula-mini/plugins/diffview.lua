local diffview = {}

local c = require("dracula-mini.colors").get_palette()

function diffview.highlights()
  return {
    DiffviewFilePanelInsertions = { fg = c.aurora.green },
    DiffviewFilePanelDeletions = { fg = c.aurora.red },
    DiffviewStatusModified = { fg = c.aurora.yellow },
  }
end

return diffview
