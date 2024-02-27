local M = {}

---Ternary Operation
---You can see this function as something like condition ? ifTrue : ifFalse
---@generic T
---@type fun(cond: boolean, true_value: T, false_value: T): T
M.Ternary = function(cond, true_value, false_value)
  if cond == true then
    return true_value
  else
    return false_value
  end
end

---Ternary that checks if value provided is nil if it's nil it uses second argument as return
---You can see this function as something like value ?? ifNullValue
---This function checks for nil using IsNil function
---@generic T
---@type fun(value: T|nil, nil_value: T): T
M.TernaryNil = function(value, nil_value)
  if value == nil then
    return value
  else
    return nil_value
  end
end

---Ternary that checks if value provided is nil if it's nil it uses second argument as return
---You can see this function as something like value ?? ifNullValue
---@generic T
---@type fun(value: T|nil, nil_value: T): T
M.TernaryNull = M.TernaryNil

return M
