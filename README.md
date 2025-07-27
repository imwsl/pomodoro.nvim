# pomodoro.nvim

A simple and beautiful Pomodoro timer plugin for Neovim 🍅.

📖 [中文文档 / Chinese README](./README.zh-CN.md)

![](https://i.imgur.com/F8kSOxx.png)


## Features
- Lualine integration
- 25-minute countdown
- Vim commands and notifications

## 📦 Installation (lazy.nvim)

```lua
{

  "imwsl/pomodoro.nvim",

  dependencies = {
    "nvim-lualine/lualine.nvim", -- Optional: for statusline display
  },
  config = function()
    require("pomodoro").setup()
  end,
}

