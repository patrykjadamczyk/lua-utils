---Try catch function
---@param f fun(...: any): any
---@param catch fun(...: any): any
---@param ... any
---@return any
return function(f, catch, ...)
  local ok, output = pcall(f, ...)
  if ok == true then
    return unpack(output)
  end
  return catch(...)
end
