OptionState = Class{__includes = BaseState}

local settings = false
local controls = false
local highlighted = 1
local volScrollX = VIRTUAL_WIDTH / 2
local volScrollY = VIRTUAL_HEIGHT / 2 + 30

function OptionState:init()


end

function OptionState:update(dt)

--volume for music in settings menu
  if (love.mouse.getY() / WINDOW_HEIGHT) * VIRTUAL_HEIGHT >= volScrollY - 10 and (love.mouse.getY() / WINDOW_HEIGHT) * VIRTUAL_HEIGHT <= volScrollY + 10 and (love.mouse.getX() / WINDOW_WIDTH) * VIRTUAL_WIDTH >= volScrollX - 10 and (love.mouse.getX() / WINDOW_WIDTH) * VIRTUAL_WIDTH <= volScrollX + 10 and love.mouse.isDown(1) and volScrollX <= VIRTUAL_WIDTH /2  + 50 and volScrollX >= VIRTUAL_WIDTH / 2 - 50 then
    if volScrollX > VIRTUAL_WIDTH / 2 - 50 and volScrollX < VIRTUAL_WIDTH / 2 - 45 then
      love.audio.setVolume(0.0)
    elseif volScrollX > VIRTUAL_WIDTH / 2 - 45 and volScrollX < VIRTUAL_WIDTH / 2 - 30 then
      love.audio.setVolume(0.1)
    elseif volScrollX > VIRTUAL_WIDTH / 2 - 30 and volScrollX < VIRTUAL_WIDTH / 2 - 20 then
      love.audio.setVolume(0.2)
    elseif volScrollX > VIRTUAL_WIDTH / 2 - 20 and volScrollX < VIRTUAL_WIDTH / 2 - 10  then
      love.audio.setVolume(0.3)
    elseif volScrollX > VIRTUAL_WIDTH / 2 - 10 and volScrollX < VIRTUAL_WIDTH / 2  then
      love.audio.setVolume(0.4)
    elseif volScrollX > VIRTUAL_WIDTH / 2 and volScrollX < VIRTUAL_WIDTH / 2 + 10 then
      love.audio.setVolume(0.5)
    elseif volScrollX > VIRTUAL_WIDTH / 2 + 10 and volScrollX < VIRTUAL_WIDTH / 2 + 20  then
      love.audio.setVolume(0.6)
    elseif volScrollX > VIRTUAL_WIDTH / 2 + 20 and volScrollX < VIRTUAL_WIDTH / 2 + 30  then
      love.audio.setVolume(0.7)
    elseif volScrollX > VIRTUAL_WIDTH / 2 + 30 and volScrollX < VIRTUAL_WIDTH / 2 + 40  then
      love.audio.setVolume(0.8)
    elseif volScrollX > VIRTUAL_WIDTH / 2 + 40 and volScrollX < VIRTUAL_WIDTH / 2 + 45  then
      love.audio.setVolume(0.9)
    elseif volScrollX > VIRTUAL_WIDTH / 2 + 45 and volScrollX < VIRTUAL_WIDTH / 2 + 50  then
      love.audio.setVolume(1)
    end

    volScrollX = (love.mouse.getX() / WINDOW_WIDTH) * VIRTUAL_WIDTH
    if volScrollX < VIRTUAL_WIDTH / 2 - 50 then
      volScrollX = VIRTUAL_WIDTH / 2 - 50

    end
    if volScrollX > VIRTUAL_WIDTH / 2 + 50  then
      volScrollX = VIRTUAL_WIDTH / 2 + 50
    end

  end
  if love.keyboard.wasPressed('escape') then
    if controls == false  and settings == false then
      if LAST_STATE == "title" then
        gStateMachine:change('title')
      elseif LAST_STATE == "play" then
        gStateMachine:change('play')
      end
    else
      controls = false
      settings = false
    end
  end
  if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
          highlighted = highlighted == 1 and 2 or 1
    end
  if love.keyboard.wasPressed('return') then
    if highlighted == 1 then
      controls = true
    end
    if highlighted == 2 then
      settings = true
    end
  end
end


function OptionState:render()
  -- options wall with settings and controls

    love.graphics.setColor(0.48,0.32, 0.19)

    love.graphics.draw(gTextures['options_wall'],0 ,0 ,0 ,1 )

    --love.graphics.setColor(0.48,0.32, 0.19)
if controls == false  and settings == false then
    love.graphics.setFont(gfonts['smallfont'])

    love.graphics.printf("OPTIONS", 0, 15 , VIRTUAL_WIDTH, "center")

    love.graphics.setFont(gfonts['mediumfont'])

    if highlighted == 1 then
      love.graphics.setColor(.66,.66,.66)
    end

    love.graphics.printf("CONTROLS", 0, VIRTUAL_HEIGHT/3 , VIRTUAL_WIDTH, "center")

    love.graphics.setColor(0.48,0.32, 0.19)

    if highlighted == 2 then
      love.graphics.setColor(.66,.66,.66)
    end
    love.graphics.printf("SETTINGS", 0,  VIRTUAL_HEIGHT/2, VIRTUAL_WIDTH, "center")

end
  if settings == true and controls == false then
  love.graphics.setFont(gfonts['mediumfont'])
  love.graphics.printf("VOLUME", 0,  VIRTUAL_HEIGHT/2, VIRTUAL_WIDTH, "center")

  love.graphics.setColor(0.48,0.32, 0.19)

  love.graphics.rectangle('fill',VIRTUAL_WIDTH / 2 - 50, VIRTUAL_HEIGHT / 2 + 29, 100, 2, 1, 1)
  --love.graphics.ellipse('fill',VIRTUAL_WIDTH/2, VIRTUAL_HEIGHT/2 + 30, 50, 1

  love.graphics.setColor(1,1,1)

  love.graphics.circle("fill", volScrollX, volScrollY, 3)
end
end
