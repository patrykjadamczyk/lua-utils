local M = {}

---Ignore package imported and not used
---@type fun(...: any): nil
-- luacheck: ignore 212
-- selene: allow(unused_variable)
M.IKnowThatThisPackageIsNotUsed = function (...)
end

---Ignore variable declared and not used
---@type fun(...: any): nil
-- luacheck: ignore 212
-- selene: allow(unused_variable)
M.IKnowThatThisVariableIsNotUsed = function (...)
end

---Ignore package imported and not used for debugging packages
---@type fun(...: any): nil
-- luacheck: ignore 212
-- selene: allow(unused_variable)
M.PackagesUsedInDebugging = function (...)
end

---Ignore package imported and not used
---@type fun(...: any): nil
-- luacheck: ignore 212
-- selene: allow(unused_variable)
M.PossiblyUsingThis = function (...)
end

return M
