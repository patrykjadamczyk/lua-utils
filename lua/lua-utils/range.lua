local M = {}

---Range function returns an array to be used with for i in range.ComplexRange(start, end, step)
---@type fun(start: number, stop: number, step: number): number[]
M.ComplexRange = function(start, stop, step)
  assert(( type(start) == type(0) ), "start must be a number")
  assert(( type(stop) == type(0) ), "stop must be a number")
  assert(( type(step) == type(0) ), "step must be a number")
  local returns = {}
  local i = start
  while i <= stop do
    returns[#returns+1] = i
    i = i + step
  end
  return returns
end

---Range function returns an array to be used with for i in range.ComplexNonInclusiveRange(start, end, step)
---@type fun(start: number, stop: number, step: number): number[]
M.ComplexNonInclusiveRange = function(start, stop, step)
  assert(( type(start) == type(0) ), "start must be a number")
  assert(( type(stop) == type(0) ), "stop must be a number")
  assert(( type(step) == type(0) ), "step must be a number")
  local returns = {}
  local i = start
  while i < stop do
    returns[#returns+1] = i
    i = i + step
  end
  return returns
end

---Range function returns an array to be used with for i in range.Range(end)
---This index will start from 0 to end
---@type fun(stop: number): number[]
M.Range = function(stop)
  return M.ComplexRange(0, stop, 1)
end

---Range function returns an array to be used with for i in range.RangeNonInclusive(end)
---This index will start from 0 to end - 1
---@type fun(stop: number): number[]
M.RangeNonInclusive = function(stop)
  return M.ComplexNonInclusiveRange(0, stop, 1)
end

---Range function returns an array to be used with for i in range.StartEndRange(start, end)
---@type fun(start: number, stop: number): number[]
M.StartEndRange = function(start, stop)
  return M.ComplexRange(start, stop, 1)
end

---Range function returns an array to be used with for i in range.StartEndNonInclusiveRange(start, end)
---@type fun(start: number, stop: number): number[]
M.StartEndNonInclusiveRange = function(start, stop)
  return M.ComplexNonInclusiveRange(start, stop, 1)
end

return M
