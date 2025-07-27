local timer = require("pomodoro.timer")

-- 插件将返回一个组件，用于插入到 lualine 配置中
return function()
  return {
    function()
      return timer.get_time_left()
    end,
    cond = timer.is_running,
    color = { fg = "#ff5f5f", gui = "bold" },
  }
end
