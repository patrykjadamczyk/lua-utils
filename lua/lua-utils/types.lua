local M = {}

local function f()
end

M.string = type("")
M.number = type(0)
M.boolean = type(true)
M.table = type({})
M.func = type(f)
M.null = type(nil)
M.thread = "thread"
M.userdata = "userdata"

return M
