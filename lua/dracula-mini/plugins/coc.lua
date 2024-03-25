local utils = require("dracula-mini.utils")

local M = {}

function M.highlights()
  local c = require("dracula-mini.colors").get_palette()
  local darken = utils.darken

  return {
    ["CocFloating"] = { link = "NormalFloat" },
    ["CocNotificationNormal"] = { link = "CocFloating" },
    -- ["CocInfoFloat"] = { bg = c.aurora.green, fg = c.aurora.red },
    CocErrorSign = { link = "DiagnosticError" },
    CocWarningSign = { link = "DiagnosticWarn" },
    CocInfoSign = { link = "DiagnosticInfo" },
    CocHintSign = { link = "DiagnosticHint" },
    CocErrorFloat = { link = "DiagnosticError" },
    CocWarningFloat = { link = "DiagnosticWarn" },
    CocInfoFloat = { link = "DiagnosticInfo" },
    CocHintFloat = { link = "DiagnosticHint" },
    CocDiagnosticsError = { link = "DiagnosticError" },
    CocDiagnosticsWarning = { link = "DiagnosticWarn" },
    CocDiagnosticsInfo = { link = "DiagnosticInfo" },
    CocDiagnosticsHint = { link = "DiagnosticHint" },
    CocUnusedHighlight = { fg = darken(c.snow_storm.brighter), bg = c.none, undercurl = true, bold = true },

    ["CocNotificationButton"] = { link = "PmenuSel" },
    ["CocNotificationProgress"] = { bg = c.aurora.green, fg = darken(c.aurora.green), bold = true },
    ["CocNotificationInfo"] = { bg = c.aurora.yellow, fg = darken(c.aurora.yellow), bold = true },
    ["CocNotificationWarning"] = { bg = c.aurora.orange, fg = darken(c.aurora.orange), bold = true },
    ["CocNotificationError"] = { bg = c.aurora.red, fg = darken(c.aurora.red, 0.5), bold = true },

    CocSelectedText = { fg = c.snow_storm.origin },
    CocCodeLens = { fg = c.polar_night.bright },
    CocInlayHint = { fg = c.polar_night.bright },
    CocMenuSel = { link = "PmenuSel" },
    CocInlayHintType = { link = "CocInlayHint" },
    CocInlayHintParameter = { link = "CocInlayHint" },
    CocErrorHighlight = { undercurl = true, sp = c.aurora.red },
    CocWarningHighlight = { sp = c.aurora.yellow, undercurl = true },
    CocInfoHighlight = { sp = c.aurora.green, undercurl = true },
    CocHintHighlight = { sp = c.aurora.orange, undercurl = true },
  }
end

return M
