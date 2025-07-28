-- init.lua 
--

-- pomodoro/init.lua

local timer = require("pomodoro.timer")

local M = {}

function M.setup()
  vim.api.nvim_create_user_command("PomodoroStart", function()
    timer.start()
  end, {})

  vim.api.nvim_create_user_command("PomodoroStop", function()
    timer.stop()
  end, {})
end

return M

