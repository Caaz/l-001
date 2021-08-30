-- Essentially, a tile that can draw itself.
-- TODO: split this by tile sprite or something when there's more than one tile
sprite = love.graphics.newImage("assets/Tiles.png")

Tile = _{
  draw = function(this)
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(sprite)
  end
}
