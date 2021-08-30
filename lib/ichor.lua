-- name: ichor
-- version: love-1.0.1
-- description: handles game state, and provides object oriented functionality.

require('lib.table.merge')

_ = {
  -- state management
  states = {},
  main = function(func, ...)
    local state = _.states[_.state]
    if(state[func]) then
      state[func](state, ...)
    end
  end,
  set_state = function(set)
    _.state = set
    _.main'init'
  end,

  -- object oriented programming interface
  __call=function(this, a)
    -- this feels dumb, but I assure you it works.
    a.new = a.new or a.extends and a.extends.new or merge
    setmetatable(a, {
      __index = a.extends,
      __call = function(c, ...)
        local table = {}
        setmetatable(table, {__index = c})
        c.new(table, ...)
        return table
      end
    })
    return a
  end
}

setmetatable(_,_)
