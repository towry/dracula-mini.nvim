local diffview = {}

function diffview.highlights()
  local c = require("dracula-mini.colors").get_palette()

  return {
    DiffviewFilePanelInsertions = { fg = c.aurora.green },
    DiffviewFilePanelDeletions = { fg = c.aurora.red },
    DiffviewStatusModified = { fg = c.aurora.yellow },
  }
end

return diffview
