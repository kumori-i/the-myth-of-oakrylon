Adv = Class{}


movement = 0


forwardIdleAnimation = Animation {
        frames = {1},
        interval = 1
    }
forwardMovingAnimation = Animation {
        frames = {2, 3, 1},
        interval = 0.2
    }
leftIdleAnimation = Animation {
        frames = {4},
        interval = 1
    }
leftMovingAnimation = Animation {
        frames = {5, 6, 4},
        interval = 0.2
    }
rightIdleAnimation = Animation {
        frames = {7},
        interval = 1
    }
rightMovingAnimation = Animation {
        frames = {8, 9, 7},
        interval = 0.2
    }
upwardIdleAnimation = Animation {
        frames = {10},
        interval = 1
    }
upwardMovingAnimation = Animation {
        frames = {11, 12,10},
        interval = 0.2
    }

currentAnimation = forwardIdleAnimation

direction = 'forward'



function Adv:init()
  self.x = 100

  self.y = 100

  self.dx = 0

  self.dy = 0

  self.height = 32

  self.width = 32

end



function Adv:update(dt)

    currentAnimation:update(dt)


  if love.keyboard.isDown('up') and  not love.keyboard.isDown('right') and  not love.keyboard.isDown('left') then
      currentAnimation = upwardMovingAnimation
      direction = 'upward'
      if love.keyboard.isDown('r')then
       self.dy = -ADV_SPRINT_SPEED
     else
       self.dy = -ADV_SPEED
     end
      self:checkUpwardCollisions(dt)

  elseif love.keyboard.isDown('down') and  not love.keyboard.isDown('right') and  not love.keyboard.isDown('left')then
      currentAnimation = forwardMovingAnimation
      direction = 'forward'
      if love.keyboard.isDown('r')then
       self.dy = ADV_SPRINT_SPEED
     else
       self.dy = ADV_SPEED
     end
      self:checkDownwardCollisions(dt)
  elseif love.keyboard.isDown('right') and not love.keyboard.isDown('up') and not love.keyboard.isDown('down')then
      currentAnimation = rightMovingAnimation
      direction = 'right'
      if love.keyboard.isDown('r')then
       self.dx = ADV_SPRINT_SPEED
     else
       self.dx = ADV_SPEED
     end
      self:checkRightCollisions(dt)
  elseif love.keyboard.isDown('left') and not love.keyboard.isDown('up') and not love.keyboard.isDown('down')then
      currentAnimation = leftMovingAnimation
      direction = 'left'
      if love.keyboard.isDown('r')then
       self.dx = -ADV_SPRINT_SPEED
     else
       self.dx = -ADV_SPEED
     end
      self:checkLeftCollisions(dt)
  else
    self.dx = 0
    self.dy = 0


    if direction == 'forward' then
      currentAnimation = forwardIdleAnimation
    elseif direction == 'left' then
      currentAnimation = leftIdleAnimation
    elseif direction == 'right' then
      currentAnimation = rightIdleAnimation
    else
      currentAnimation = upwardIdleAnimation
    end

  end
  if self:checkHouseCollision(dt) and love.keyboard.isDown('y') then
    self.x = self.x + 100
  end
  if self:checkForestCollision(dt) and love.keyboard.isDown('y') then
    self.x = self.x - 100
  end
  if self:checkFishingCollision(dt) and love.keyboard.isDown('f') then
    self.x = self.x + 100
  end
  if MAPCHOSEN == 1 then
    self.x = math.max(0, self.x + self.dx * dt)
    self.x = math.min(gTextures['map']:getWidth() - self.width, self.x + self.dx * dt)
    self.y = math.max(0, self.y + self.dy * dt)
    self.y = math.min(gTextures['map']:getHeight() - self.height, self.y + self.dy * dt)
  end
  if MAPCHOSEN == 2 then
    self.x = math.max(0, self.x + self.dx * dt)
    self.x = math.min(VIRTUAL_WIDTH - self.width, self.x + self.dx * dt)
    self.y = math.max(0, self.y + self.dy * dt)
    self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
  end


end


function Adv:render()

  love.graphics.draw(gTextures['characters'], gFrames['charactersheet'][currentAnimation:getCurrentFrame()],self.x,self.y)
end

function Adv:checkLeftCollisions(dt)
    if  Map:collidesleftoverworld(self.x,self.y)   and MAPCHOSEN == 1 then
        self.x =  self.x + 4
    elseif MAPCHOSEN == 1 then
        self.y = self.y - 1
        self.y = self.y + 1
    end
    if  Map:collidesleftcave(self.x,self.y)   and MAPCHOSEN == 2 then
        self.x =  self.x + 4
    elseif MAPCHOSEN == 2 then
        self.y = self.y - 1
        self.y = self.y + 1
    end
end
function Adv:checkRightCollisions(dt)
    if  Map:collidesrightoverworld(self.x,self.y)    and MAPCHOSEN == 1 then
        self.x =  self.x - 4
    elseif  MAPCHOSEN == 1 then
        self.y = self.y - 1
        self.y = self.y + 1
    end
    if  Map:collidesrightcave(self.x,self.y)    and MAPCHOSEN == 2 then
        self.x =  self.x - 4
    elseif  MAPCHOSEN == 2 then
        self.y = self.y - 1
        self.y = self.y + 1
    end
end
function Adv:checkUpwardCollisions(dt)
    if Map:collidesupwardoverworld(self.x,self.y)  and MAPCHOSEN == 1 then

        self.y = self.y + 4
    elseif  MAPCHOSEN == 1 then
        self.x = self.x - 1
        self.x = self.x + 1
    end
    if Map:collidesupwardcave(self.x,self.y)  and MAPCHOSEN == 2 then

        self.y = self.y + 4
    elseif  MAPCHOSEN == 2 then
        self.x = self.x - 1
        self.x = self.x + 1
    end
end
function Adv:checkDownwardCollisions(dt)
    if Map:collidesdownwardoverworld(self.x,self.y)  and MAPCHOSEN == 1 then

        self.y = self.y - 4
    elseif  MAPCHOSEN == 1 then
        self.x = self.x - 1
        self.x = self.x + 1
    end
    if Map:collidesdownwardcave(self.x,self.y)  and MAPCHOSEN == 2 then

        self.y = self.y - 4
    elseif  MAPCHOSEN == 2 then
        self.x = self.x - 1
        self.x = self.x + 1
    end
end
function Adv:checkCaveCollision(dt)
   if Map:collidescaveoverworld(self.x,self.y) and MAPCHOSEN == 1 then
     return true
  elseif MAP == 1 then
    return false
  end
  if Map:collidescavecave(self.x,self.y) and MAPCHOSEN == 2 then
    return true
 elseif MAP == 2 then
   return false
 end
end
function Adv:checkHouseCollision(dt)
   if Map:collideshouseoverworld(self.x,self.y) and MAPCHOSEN == 1 then
     return true
   elseif Map:collideshousecave(self.x,self.y) and MAPCHOSEN == 2 then
      return true
  end
end
function Adv:checkForestCollision(dt)
  if self.x > (VIRTUAL_WIDTH * 2) + (TILE_SIZE * 2) and self.y > TILE_SIZE * 3 and self.y < TILE_SIZE * 7  and MAPCHOSEN == 1 then
    return true
  end
end
function Adv:checkFishingCollision(dt)
  if self.x < TILE_SIZE * 3 and self.y > TILE_SIZE * 14 and self.y < TILE_SIZE * 19 and MAPCHOSEN == 1 then
    return true
  end
end
