-- timer.lua 
--

local uv = vim.loop
local M = {}

local timer = nil
local start_time = nil 
local duration = 25 * 60 
local running = false 

function M.start()
  if running then
    print("🍅 已经在计时中")
    return
  end

  start_time = uv.now()
  running = true
  timer = uv.new_timer()

  timer:start(0, 1000, vim.schedule_wrap(function()
    local elapsed = math.floor((uv.now() - start_time) / 1000)
    if elapsed >= duration then
      M.stop()
      vim.notify("⏰ 番茄时间结束！休息一下~", vim.log.levels.INFO)
    end

    vim.cmd("redrawstatus") -- 触发 lualine 更新
  end))
  vim.notify("🍅 番茄计时开始", vim.log.levels.INFO)

end

function M.stop()

  if timer then
    timer:stop()

    timer:close()
    timer = nil
  end
  running = false
  start_time = nil
  vim.cmd("redrawstatus")
end

function M.get_time_left()
  if not running then return "" end
  local elapsed = math.floor((uv.now() - start_time) / 1000)
  local remain = duration - elapsed
  if remain < 0 then remain = 0 end
  local min = math.floor(remain / 60)
  local sec = remain % 60

  return string.format("🍅 %02d:%02d", min, sec)
end


function M.is_running()
  return running
end

return M
