local config = require("dracula-mini.config")
local utils = require("dracula-mini.utils")

local M = {}

function M.load(opts)
  if vim.g.colors_name then
    vim.cmd([[ highlight clear ]])
  end

  if opts then
    require("dracula-mini.config").extend(opts)
  end

  if config.options.terminal_colors then
    require("dracula-mini.terminal").apply()
  end

  utils.load(
    require("dracula-mini.defaults").highlights(),
    require("dracula-mini.lsp").highlights(),
    require("dracula-mini.syntax").highlights(),
    require("dracula-mini.terminal").highlights(),
    require("dracula-mini.treesitter").highlights(),
    require("dracula-mini.plugins.bufferline").highlights(),
    require("dracula-mini.plugins.completion").highlights(),
    require("dracula-mini.plugins.filetree").highlights(),
    require("dracula-mini.plugins.git").highlights(),
    require("dracula-mini.plugins.motion").highlights(),
    require("dracula-mini.plugins.notify").highlights(),
    require("dracula-mini.plugins.picker").highlights(),
    require("dracula-mini.plugins.ui").highlights(),
    require("dracula-mini.plugins.diffview").highlights(),
    require("dracula-mini.plugins.neogit").highlights(),
    require("dracula-mini.plugins.glance").highlights(),
    require("dracula-mini.plugins.mini").highlights(),
    require("dracula-mini.plugins.coc").highlights()
  )

  vim.g.colors_name = "dracula-mini"
end

M.setup = config.setup

return M
