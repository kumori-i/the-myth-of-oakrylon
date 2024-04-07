PlayState = Class{__includes = BaseState}


cameraScrollX = 0
cameraScrollY = 0



cave = false
first = true

local highlighted = 1

function PlayState:init()

  self.adv = Adv()

  self.map = Map()

  self.health = 8

end


function PlayState:update(dt)


-- Play State update keys
if  not self.paused then

  if love.keyboard.isDown('left') and self.adv.x <= gTextures['map']:getWidth() - (VIRTUAL_WIDTH / 2) and MAPCHOSEN == 1 then
    if cameraScrollX > 0 and self.adv.x< cameraScrollX + (VIRTUAL_WIDTH / 2) then
      --cameraScrollX = cameraScrollX - CAMERA_SCROLL_SPEED * dt
      cameraScrollX = self.adv.x - VIRTUAL_WIDTH /2
    end
  end

  if love.keyboard.isDown('right') and self.adv.x >= VIRTUAL_WIDTH / 2 then
    if cameraScrollX + VIRTUAL_WIDTH < gTextures['map']:getWidth() and  self.adv.x > cameraScrollX + (VIRTUAL_WIDTH / 2)  and MAPCHOSEN == 1 then
      --cameraScrollX = cameraScrollX + CAMERA_SCROLL_SPEED * dt
      cameraScrollX = self.adv.x - VIRTUAL_WIDTH /2
    end
  end


  if love.keyboard.isDown('up') and self.adv.y <= gTextures['map']:getHeight() - (VIRTUAL_HEIGHT / 2)  and MAPCHOSEN == 1 then
    if cameraScrollY > 0 then
      --cameraScrollY = cameraScrollY - CAMERA_SCROLL_SPEED * dt
      cameraScrollY = self.adv.y - VIRTUAL_HEIGHT /2
    end

  end

  if love.keyboard.isDown('down') and self.adv.y >= VIRTUAL_HEIGHT / 2  and MAPCHOSEN == 1 then
    if cameraScrollY + VIRTUAL_HEIGHT < gTextures['map']:getHeight() then
      --cameraScrollY = cameraScrollY + CAMERA_SCROLL_SPEED * dt
      cameraScrollY = self.adv.y - VIRTUAL_HEIGHT /2
    end

  end

  if love.keyboard.wasPressed('t') then
    self.health = self.health - 1
  end
end


-- update for when paused
  if self.paused then
    if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
            highlighted = highlighted == 1 and 2 or 1
        end

        -- confirm whichever option we have selected to change screens
        if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
            LAST_STATE = "play"
            if highlighted == 1 then
                gStateMachine:change('title')
            else
                gStateMachine:change('options')
            end
        end


     if love.keyboard.wasPressed('escape') then
        self.paused = false
    else
      return
    end
  elseif love.keyboard.wasPressed('escape') and MAPCHOSEN == 1 then
    self.paused = true
    return
  end


   self.adv:update(dt)



end

function PlayState:render()


    love.graphics.translate(-math.floor(cameraScrollX), -math.floor(cameraScrollY))



-- exiting cave collision
    if self.adv:checkCaveCollision(dt) and love.keyboard.isDown('y') or cave == true then
      cave = true
          self.map:rendercave()
          MAPCHOSEN = 2

          if self.adv.x > VIRTUAL_WIDTH / 2 - TILE_SIZE and self.adv.x < (VIRTUAL_WIDTH / 2) + TILE_SIZE and self.adv.y > VIRTUAL_HEIGHT - (3 * TILE_SIZE) then
            self.map:renderoverworld()
            self.adv.x = TILE_SIZE * 5.5
            self.adv.y = TILE_SIZE * 3
            cave = false

          end
    elseif cave == false then
      self.map:renderoverworld()
      MAPCHOSEN = 1
    end

    renderHealth(self.health)

    if self.health == 0 then
      love.graphics.print("Game Over", self.adv.x,self.adv.y)
    end

      self.adv:render()



    if self.paused then



      love.graphics.setDefaultFilter('linear', 'linear')


      love.graphics.draw(gTextures['pause_screen'], cameraScrollX + (VIRTUAL_WIDTH/ 5 - 55), cameraScrollY + (VIRTUAL_HEIGHT / 2 - 67),0,1.75)

      love.graphics.setFont(gfonts['largefont'])
      love.graphics.setColor(0,0,0)
      love.graphics.printf("PAUSED", cameraScrollX + 100, cameraScrollY + ((VIRTUAL_HEIGHT)/ 2 - 32) ,VIRTUAL_HEIGHT, "center")



      love.graphics.setColor(0,0, 0, 100)
      love.graphics.setFont(gfonts['mediumfont'])
      if highlighted == 1 then
        love.graphics.setColor(.66,.66,.66)
       end
       love.graphics.printf("EXIT TO MAIN MENU", cameraScrollX, cameraScrollY + (((VIRTUAL_HEIGHT / 3) * 2) - 13),
          VIRTUAL_WIDTH, 'center')

       -- reset the color
       love.graphics.setColor(0, 0, 0, 100)

       -- render option 2 blue if we're highlighting that one
       if highlighted == 2 then
           love.graphics.setColor(.66, .66, .66)
       end
       love.graphics.printf("OPTIONS", cameraScrollX+ 100, cameraScrollY+ (((VIRTUAL_HEIGHT/ 3) * 2) + 8),
            VIRTUAL_HEIGHT, 'center')

       -- reset the color
       love.graphics.setColor(0, 0, 0, 100)

    end
    if self.adv:checkCaveCollision(dt) then
      love.graphics.setFont(gfonts['smallfont'])
      love.graphics.setColor(1,1,1)
      love.graphics.print("Y", 104,35)
    end
    if self.adv:checkHouseCollision(dt) then
      love.graphics.setFont(gfonts['smallfont'])
      love.graphics.setColor(1,1,1)
      love.graphics.print("Y", self.adv.x,self.adv.y)
    end
    if self.adv:checkForestCollision(dt) then
      love.graphics.setFont(gfonts['smallfont'])
      love.graphics.setColor(1,1,1)
      love.graphics.print("Y", self.adv.x,self.adv.y)
    end
    if self.adv:checkFishingCollision(dt) then
      love.graphics.setFont(gfonts['smallfont'])
      love.graphics.setColor(1,1,1)
      love.graphics.print("F", self.adv.x,self.adv.y)
    end
end
