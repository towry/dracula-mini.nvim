local git = {}

function git.highlights()
  local c = require("dracula-mini.colors").get_palette()

  return {
    -- airblade/vim-gitgutter
    GitGutterAdd = { fg = c.aurora.green },
    GitGutterChange = { fg = c.aurora.yellow },
    GitGutterDelete = { fg = c.aurora.red },

    -- lewis6991/gitsigns.nvim
    GitSignsAdd = { fg = c.aurora.green },
    GitSignsAddNr = { fg = c.aurora.green },
    GitSignsAddLn = { fg = c.aurora.green },
    GitSignsChange = { fg = c.aurora.yellow },
    GitSignsChangeNr = { fg = c.aurora.yellow },
    GitSignsChangeLn = { fg = c.aurora.yellow },
    GitSignsDelete = { fg = c.aurora.red },
    GitSignsDeleteNr = { fg = c.aurora.red },
    GitSignsDeleteLn = { fg = c.aurora.red },
    GitSignsCurrentLineBlame = { fg = c.polar_night.light },
  }
end

return git
