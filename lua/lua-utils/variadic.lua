local M = {}


---Pack values provided as arguments to array
---@type fun(...: any): any[]
M.PackToArray = function (...)
  return {...}
end

---Explode array into provided references to variables
---@param array any[]
---@return any   ...
M.Explode = function (array)
  return unpack(array)
end

return M
