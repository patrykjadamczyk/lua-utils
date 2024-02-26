local M = {}

---Get only first element or returns nil if there is none
---@generic T
---@type fun(...: T): T
M.TailV = function(...)
  local args = {...}
  if #args == 0 then
    return nil
  end
  return args[#args]
end

---Get only first element or returns nil if there is none
---@generic T
---@type fun(array: T[]): T
M.Tail = function(array)
  return M.TailV(unpack(array))
end

return M
