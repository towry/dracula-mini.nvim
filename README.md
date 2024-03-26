<p align="left">
  <a target="_blank" href="https://github.com/towry/dracula-mini.nvim/discussions/1#discussioncomment-8903573"><img alt="preview pictures" src="https://img.shields.io/badge/😍 Click to Preview-8A2BE2" /></a>
  <span>·</span>
  <span><img alt="panvimdoc"
src="https://github.com/towry/dracula-mini.nvim/actions/workflows/doc.yml/badge.svg"
    /></span>
</p>

# 🖌️ dracula-mini.nvim

The famous **Dracula** (dark/light) theme for **NeoVim**.

## ✨ Features

- 🌞 Supports **_Light_** mode
- 🌳 Supports TreeSitter and LSP
- 🎨 Vim terminal colors

### Plugin Support

- [Coc](https://github.com/neoclide/coc.nvim/)
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [NeoTree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [~~Lualine~~](https://github.com/hoob3rt/lualine.nvim)
- [Leap](https://github.com/ggandor/leap.nvim)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Cmp](https://github.com/hrsh7th/nvim-cmp/)
- [Navic](https://github.com/SmiteshP/nvim-navic)
- [Aerial](https://github.com/stevearc/aerial.nvim)
- [Notify](https://github.com/rcarriga/nvim-notify)
- [RainbowDelimiter](https://github.com/HiPhish/rainbow-delimiters.nvim)
- [Neogit](https://github.com/NeogitOrg/neogit)
- [highlight-undo.nvim](https://github.com/tzachar/highlight-undo.nvim)
- [Illuminate](https://github.com/RRethy/vim-illuminate)
- [Codeium](https://github.com/Exafunction/codeium.vim)
- [Flash.nvim](https://github.com/folke/flash.nvim)
- [Glance](https://github.com/dnlhc/glance.nvim)

You're preferred plugin is missing ? Open an issue or, even better, open a pull
request 😉.

## ⚡️ Requirements

- Neovim >= 0.8.0

## 📦 Installation

Install the theme with your preferred package manager:

[lazy](https://github.com/folke/lazy.nvim)

```lua
require("lazy").setup({
  {
    "towry/dracula-mini.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula-mini").setup({})
      vim.cmd.colorscheme("dracula-mini")
    end,
  },
  install = {
    colorscheme = { "dracula-mini" },
  },
});
```

## 🚀 Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme dracula-mini
```

```lua
-- Lua
vim.cmd.colorscheme("dracula-mini")
```

## ⚙️ Configuration

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with
> `colorscheme dracula-mini`

dracula-mini.nvim will use the default options, unless you call `setup`.

```lua
require("dracula-mini").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  diff = { mode = "bg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
  borders = true, -- Enable the border between verticaly split windows visible
  errors = { mode = "bg" }, -- Display mode for errors and diagnostics
                            -- values : [bg|fg|none]
  search = { theme = "vim" }, -- theme for highlighting search results
                              -- values : [vim|vscode]
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},

    -- To customize lualine/bufferline
    bufferline = {
      current = {},
      modified = { italic = true },
    },
  },

  -- colorblind mode
  -- see https://github.com/EdenEast/nightfox.nvim#colorblind
  -- simulation mode has not been implemented yet.
  colorblind = {
    enable = false,
    preserve_background = false,
    severity = {
      protan = 0.0,
      deutan = 0.0,
      tritan = 0.0,
    },
  }

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with all highlights and the colorScheme table
  on_highlights = function(highlights, colors) end,
})
```

## 🤝 Integrations

</details>

</details>

## 🎉 Credits

- [nord.nvim](https://github.com/gbprod/nord.nvim)
