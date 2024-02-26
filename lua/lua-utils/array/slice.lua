local M = {}

---@generic T
---@type fun(array: T[], n: number): T[]
M.slice0ToN = function (array, n)
  return {unpack(array, 1, n)}
end

---@generic T
---@type fun(array: T[], n: number): T[]
M.sliceNToLength = function (array, n)
  return {unpack(array, n)}
end

---@generic T
---@type fun(array: T[], start: number, stop: number): T[]
M.slice = function (array, start, stop)
  return {unpack(array, start, stop)}
end

return M
