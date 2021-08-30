Timer = _{
  time = 0,
  timeout = 1,
  callback = function(this)
    error("No callback on timer!")
  end,
  -- timeout, callback
  update = function(this, delta)
    this.time = this.time + delta
    if this.timeout <= this.time then
      this.callback(this)
    end
  end,
}
-- Usage:
-- Timer{
--   timeout = 1,
--   callback = function(this)
--     this.time = 0
--     print("Hello, World!")
--   end
-- },
