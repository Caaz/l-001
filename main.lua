require('lib.ichor')
require('states.game')

local internal_resolution = {1200,720}

function love.load()
  love.window.setMode(internal_resolution[1], internal_resolution[2], {resizable=false})
  _.set_state'game'
end

function love.update(delta)
  _.main('update', delta)
end

function love.draw()
  _.main'draw'
end
