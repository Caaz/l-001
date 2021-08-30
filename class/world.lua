require('const')
require('lib.table.forxy')
require('class.tile')

World = _{
  new = function(this)
    this:clear_world()
  end,
  update = function()
  end,
  clear_world = function(this)
    this.tiles = {}
    for x = 1, 10 do
      this.tiles[x] = {}
      for y = 1, 10 do
        this.tiles[x][y] = Tile{}
      end
    end
  end,
  draw = function(this)
    forxy(this.tiles, function(tile, x, y)
      tx = x*TILE_SIZE-TILE_SIZE
      ty = y*TILE_SIZE-TILE_SIZE
      love.graphics.translate(tx, ty)
      tile:draw()
      love.graphics.translate(-tx, -ty)
    end)
  end
}
