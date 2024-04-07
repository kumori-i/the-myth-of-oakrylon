


StartState = Class{__includes = BaseState}

local highlighted = 1


love.graphics.setDefaultFilter('nearest', 'nearest')
font = love.graphics.newFont('oakrylon.ttf', 16)


function StartState:update(dt)

-- Title Screen update

  if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
          highlighted = highlighted == 1 and 2 or 1
      end

      -- confirm whichever option we have selected to change screens
      if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        LAST_STATE = "title"
          if highlighted == 1 then
              gStateMachine:change('play')
          else

            gStateMachine:change('options')
          end
      end


  if love.keyboard.wasPressed('escape') then
    love.event.quit()
  end
end

function StartState:render()

  love.graphics.setFont(font)

  love.graphics.draw(gTextures['background'], 0, 0, 0, VIRTUAL_WIDTH / (gTextures['background']:getWidth() - 1), VIRTUAL_HEIGHT / (gTextures['background']:getHeight() - 1))

  love.graphics.setColor(0,0, 0, 100)

  if highlighted == 1 then
    love.graphics.setColor(.66,.66,.66)
   end
   love.graphics.printf("START", 0, ((VIRTUAL_HEIGHT/ 3) * 2) - 13,
       VIRTUAL_WIDTH, 'center')

   -- reset the color
   love.graphics.setColor(0, 0, 0, 100)

   -- render option 2 blue if we're highlighting that one
   if highlighted == 2 then
       love.graphics.setColor(.66, .66, .66)
   end
   love.graphics.printf("OPTIONS", 0, ((VIRTUAL_HEIGHT/ 3) * 2) + 8,
       VIRTUAL_WIDTH, 'center')

   -- reset the color
   love.graphics.setColor(0, 0, 0, 100)
end
