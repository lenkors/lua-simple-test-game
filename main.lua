-- Global variables
    Title = 'Lua Game Test v0.0.3a'
    Ver = '0.0.3a'
    
    fps = love.timer.getFPS()

    positionData = {
        up = '',
        down = '',
        left = '',
        right = '',
    }

    num = 0
    score = 0
    BestScore = 0

    headerFont = love.graphics.newFont(25)

    -- Btns
    Btn1 = {
        x = 100,
        y = 40,
        size = 25,
    }

    Btn2 = {
        x = 250,
        y = 110,
        size = 20,
    }
    -- Btns end 
    GameOver = {
        isFail = false,
        isMoreThen100 = false,
    }
    -- DEBUGER By default start on port 8000
    LoveBird = require 'packages.lovebird' 
-- end global variables

-- Main modules
require 'modules.load'
require 'modules.draw'
require 'modules.update'

-- Hooks
require 'hooks.mouse'
require 'hooks.countFunc'

-- Controllers
require 'controllers.Player'
