local M = {}

---DebugMode Variable
---@type boolean
M.DebugMode = false

---Set Debug Mode
---@type fun(debugMode: boolean): nil
M.SetDebugMode = function (debugMode)
  M.DebugMode = debugMode
end

---Get Current State of Debug Mode
---@type fun(): boolean
M.GetDebugMode = function ()
  return M.DebugMode
end

---Execute specified function only in Debug Mode
---@param f fun(): nil
---@return nil
M.ExecuteInDebugMode = function (f)
  if M.GetDebugMode == true then
    f()
  end
end

---Execute specified function and pass through all values
---@param f fun(...): unknown
---@return unknown
M.ExecuteAndPassthrough = function (f, ...)
  f(...)
  return ...
end

return M
