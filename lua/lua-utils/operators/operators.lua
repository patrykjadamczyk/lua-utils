local M = {
    ----------------------------------------------------------------------------
    -- Comparison operators
    ----------------------------------------------------------------------------

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1, b: T2): boolean
    lt  = function(a, b) return a < b end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1, b: T2): boolean
    le  = function(a, b) return a <= b end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1, b: T2): boolean
    eq  = function(a, b) return a == b end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1, b: T2): boolean
    ne  = function(a, b) return a ~= b end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1, b: T2): boolean
    ge  = function(a, b) return a >= b end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1, b: T2): boolean
    gt  = function(a, b) return a > b end,

    ----------------------------------------------------------------------------
    -- Arithmetic operators
    ----------------------------------------------------------------------------

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    add = function(a, b) return a + b end,

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    div = function(a, b) return a / b end,

    ---@type fun(a: number, b: number): integer
    floordiv = function(a, b)
      return math.floor(a/b)
    end,

    ---@type fun(a: number, b: number): integer
    intdiv = function(a, b)
        local q = a / b
        if a >= 0 then
          return math.floor(q)
        else
          return math.ceil(q)
        end
    end,

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    mod = function(a, b) return a % b end,

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    mul = function(a, b) return a * b end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1): T2
    neq = function(a) return -a end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1): T2
    unm = function(a) return -a end, -- an alias

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    pow = function(a, b) return a ^ b end,

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    sub = function(a, b) return a - b end,

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    truediv = function(a, b) return a / b end,

    ----------------------------------------------------------------------------
    -- String operators
    ----------------------------------------------------------------------------

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    concat = function(a, b) return a..b end,

    ----------------------------------------------------------------------------
    -- Length
    ----------------------------------------------------------------------------

    ---@generic T1
    ---@type fun(a: T1): number
    len = function(a) return #a end,

    ---@generic T1
    ---@type fun(a: T1): number
    length = function(a) return #a end, -- an alias

    ----------------------------------------------------------------------------
    -- Logical operators
    ----------------------------------------------------------------------------

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    land = function(a, b) return a and b end,

    ---@generic T1
    ---@generic T2
    ---@generic T3
    ---@type fun(a: T1, b: T2): T3
    lor = function(a, b) return a or b end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1): T2
    lnot = function(a) return not a end,

    ---@generic T1
    ---@generic T2
    ---@type fun(a: T1): T2
    truth = function(a) return not not a end,
}
return M
