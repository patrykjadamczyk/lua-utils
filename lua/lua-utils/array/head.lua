local M = {}

---Get only first element or returns nil if there is none
---@generic T
---@type fun(...: T): T
M.HeadV = function(head, _)
  return head
end

---Get only first element or returns nil if there is none
---@generic T
---@type fun(array: T[]): T
M.Head = function(array)
  return M.HeadV(unpack(array))
end

return M
