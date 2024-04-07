--alias love="/Applications/love.app/Contents/MacOS/love"
require 'src/Dependecies'


function love.load()
  love.graphics.setDefaultFilter('nearest', 'nearest')

  math.randomseed(os.time())

  love.window.setTitle('The Myth Of Oakrylon')
  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
    vsync = true,
     fullscreen = false,
     resizable = true
  })

  gAudio = { --[[audio clips]]
    ['main_theme'] = love.audio.newSource('music/Main Theme -- Adventure Game.wav',"stream"),
    ['stars'] = love.audio.newSource('music/Stars.wav', "stream"),
    ['waves'] = love.audio.newSource('music/Waves.wav', "stream")
  }

  gTextures = { --[[textures throughout the game]]
    ['hearts'] = love.graphics.newImage('imgs/hearts.png'),
    ['options_wall'] = love.graphics.newImage('imgs/optionswall.png'),
    ['pause_screen'] = love.graphics.newImage('imgs/thepausescreen.png'),
    ['background'] = love.graphics.newImage('imgs/titlescreen2.png'),
    ['map'] = love.graphics.newImage('imgs/Map of Oakrylon.png'),
    ['characters'] = love.graphics.newImage('imgs/resizedadv.png'),
    ['tileset'] = love.graphics.newImage('imgs/Map Of Oakrylon Tileset.png')
  }

  gFrames = { --[[different types of tilesets]]
        ['hearts'] = GenerateQuads(gTextures['hearts'], 9, 9),
        ['charactersheet'] = GenerateQuadsCharacters(gTextures['characters']),
        ['tiles'] = GenerateQuadsTiles(gTextures['tileset'])
    }

  gfonts = { --[[fonts]]
      ['smallfont'] = love.graphics.newFont('oakrylon.ttf', 6),
      ['mediumfont'] = love.graphics.newFont('oakrylon.ttf', 16),
      ['largefont'] = love.graphics.newFont('oakrylon.ttf', 32)
  }
  love.graphics.setFont(gfonts['smallfont'])

  gStateMachine = StateMachine{ --[[list of states]]
    ['title'] = function() return StartState() end,
    ['play'] = function() return PlayState() end,
    ['options'] = function() return OptionState() end
  }
  gStateMachine:change('title')

  gAudio['main_theme']:play()
  gAudio['main_theme']:setLooping(true)
  love.audio.setVolume(0.5)



love.keyboard.keysPressed = {}

end


function love.resize(w, h)
  push:resize(w,h)
end

function love.update(dt)
  gStateMachine:update(dt)

  love.keyboard.keysPressed = {}
end
function love.keypressed(key)
    -- add to our table of keys pressed this frame
    love.keyboard.keysPressed[key] = true
end
function love.keyboard.wasPressed(key)
    if love.keyboard.keysPressed[key] then
        return true
    else
        return false
    end
end
function love.draw()
  push:apply('start')


  gStateMachine:render()


  love.graphics.setFont(gfonts['smallfont'])

  displayFPS()

  push:apply('end')
end

--[[render & update health]]
function renderHealth(health)
    -- start of our health rendering
    local healthX = cameraScrollX + 4
    local healthY = cameraScrollY + 4

    -- render health left
    for i = 1, health do
        love.graphics.draw(gTextures['hearts'], gFrames['hearts'][1], healthX, healthY)
        healthX = healthX + 11
    end

    -- render missing health
    for i = 1, 8 - health do
        love.graphics.draw(gTextures['hearts'], gFrames['hearts'][2], healthX, healthY)
        healthX = healthX + 11
    end
end
--[[FPS]]
function displayFPS()
    -- simple FPS display across all states
    love.graphics.setFont(gfonts['smallfont'])
    love.graphics.setColor(0, 255, 0, 255)
    love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()),  cameraScrollX + (VIRTUAL_WIDTH - 40), cameraScrollY+5)
end
