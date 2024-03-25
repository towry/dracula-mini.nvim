local colors = {}

colors.default_bg = "#282A36" -- nord0

local caches = {}

local function daltonize(severity, palette)
  local daltonize_ = require("dracula-mini.utils.colorblind").daltonize

  for group, color in pairs(palette) do
    if type(color) == "table" then
      for sub_group, sub_color in pairs(color) do
        palette[group][sub_group] = daltonize_(sub_color, severity)
      end
    end
  end
end

---@type variant? string
colors.get_palette = function(variant)
  local config = require("dracula-mini.config")
  local vart = variant or config.options.variant
  local bg = vim.o.background
  local cache_key = vart .. "_" .. bg
  if caches[cache_key] then
    return caches[cache_key]
  end
  local ok, palette = pcall(require, "dracula-mini.variants." .. vart)
  if not ok then
    palette = require("dracula-mini.variants.default")
  end
  caches[cache_key] = palette[bg]

  if config.options.colorblind.enable and caches[cache_key] then
    daltonize(config.options.colorblind.severity, caches[cache_key])
  end

  return caches[cache_key] or palette.dark
end

return colors
