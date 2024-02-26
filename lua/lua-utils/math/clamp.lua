---Clamp clamps number within the inclusive lower and upper bounds.
---@generic T
---@type fun(x: T, min: T, max: T): T
return function (x, min, max)
  if x < min then
    return min
  elseif x > max then
    return max
  else
    return x
  end
end
