function GenerateQuads(atlas, tilewidth, tileheight)
    local sheetWidth = atlas:getWidth() / tilewidth
    local sheetHeight = atlas:getHeight() / tileheight

    local sheetCounter = 1
    local spritesheet = {}

    for y = 0, sheetHeight - 1 do
        for x = 0, sheetWidth - 1 do
            spritesheet[sheetCounter] =
                love.graphics.newQuad(x * tilewidth, y * tileheight, tilewidth,
                tileheight, atlas:getDimensions())
            sheetCounter = sheetCounter + 1
        end
    end

    return spritesheet
end

--[[
    Utility function for slicing tables, a la Python.
    https://stackoverflow.com/questions/24821045/does-lua-have-something-like-pythons-slice
]]
function table.slice(tbl, first, last, step)
    local sliced = {}

    for i = first or 1, last or #tbl, step or 1 do
      sliced[#sliced+1] = tbl[i]
    end

    return sliced
end

--[[
    This function is specifically made to piece out the paddles from the
    sprite sheet. For this, we have to piece out the paddles a little more
    manually, since they are all different sizes.
]]
function GenerateQuadsCharacters(atlas)
    local x = 0
    local y = 0

    local counter = 1
    local quads = {}

    for i = 0, 3 do
        -- standing
        quads[counter] = love.graphics.newQuad(x, y, 32, 32,
            atlas:getDimensions())
        counter = counter + 1
        -- walking 1
        quads[counter] = love.graphics.newQuad(x + 32, y, 32, 32,
            atlas:getDimensions())
        counter = counter + 1
        -- walking 2
        quads[counter] = love.graphics.newQuad(x + 96, y, 32, 32,
            atlas:getDimensions())
        counter = counter + 1

        -- prepare X and Y for the next set of paddles
        x = 0
        y = y + 32
    end

    return quads
end

function GenerateQuadsTiles(atlas)
    local x = 0
    local y = 0

    local counter = 1
    local quads = {}

    for i = 0, 27 do
        -- standing
        quads[counter] = love.graphics.newQuad(x, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1
        -- walking 1
        quads[counter] = love.graphics.newQuad(x + 16, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1
        -- walking 2
        quads[counter] = love.graphics.newQuad(x + 32, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1
        quads[counter] = love.graphics.newQuad(x + 48, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1
        -- walking 1
        quads[counter] = love.graphics.newQuad(x + 64, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1
        -- walking 2
        quads[counter] = love.graphics.newQuad(x + 80, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1
        quads[counter] = love.graphics.newQuad(x + 96, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1
        -- walking 2
        quads[counter] = love.graphics.newQuad(x + 112, y, 16, 16,
            atlas:getDimensions())
        counter = counter + 1

        -- prepare X and Y for the next set of paddles
        x = 0
        y = y + 16
    end

    return quads
end
