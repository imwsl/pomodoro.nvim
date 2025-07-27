# pomodoro.nvim 中文说明

这是一个简洁美观的 Neovim 番茄钟插件 🍅。

📘 [English README](./README.md)

![](https://i.imgur.com/F8kSOxx.png)

## 功能特性
- 集成 Lualine 状态栏显示
- 25 分钟倒计时
- Vim 命令操作和提醒


---

## ✅ 更新后的中文说明

```markdown

## 📦 安装方法（使用 lazy.nvim）


```lua
{
  "imwsl/pomodoro.nvim",
  dependencies = {
    "nvim-lualine/lualine.nvim", -- 可选：用于状态栏显示剩余时间
  },
  config = function()
    require("pomodoro").setup()
  end,
}

