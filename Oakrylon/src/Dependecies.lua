push = require 'lib/push'

-- the "Class" library we're using will allow us to represent anything in
-- our game as code, rather than keeping track of many disparate variables and
-- methods
--
-- https://github.com/vrld/hump/blob/master/class.lua
Class = require 'lib/class'

-- a few global constants, centralized
tween = require 'lib/tween'

require 'src/StateMachine'

require 'src/Util'

require 'src/Animation'

require 'src/constants'

require 'src/Map'

require 'src/GameLevel'

require 'src/TileMap'

require 'src/Tile'

require 'src/adv'

require 'src/states/BaseState'

require 'src/states/StartState'

require 'src/states/PlayState'

require 'src/states/OptionState'
