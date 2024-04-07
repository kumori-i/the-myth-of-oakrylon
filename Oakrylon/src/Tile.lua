
Tile = Class{}

function Tile:init(x, y, id)
    self.x = x
    self.y = y

    self.width = TILE_SIZE
    self.height = TILE_SIZE

    self.id = id
end

--[[
    Checks to see whether this ID is whitelisted as collidable in a global constants table.
]]

function Tile:collidable(target)
    for k, v in pairs(COLLIDABLE_TILES) do
        if v == self.id then
            return true
        end
    end

    return false
end


function Tile:render()
    love.graphics.draw(gTextures['tileset'], gFrames['tiles'][self.id],
        x,y)
end
