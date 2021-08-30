require('lib.class.timer')
require('lib.table.foreach')
require('class.world')

_.states['game'] = {
  init = function(this)
    this.world = World{}
    this.timers = {}
  end,
  update = function(this, delta)
    -- print(delta)
    foreach(this.timers, function(timer)
      timer:update(delta)
    end)
  end,
  draw = function(this)
    this.world:draw()
  end
}
