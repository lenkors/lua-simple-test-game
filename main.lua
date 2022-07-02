-- Global variables
    Title = 'Lua Game Test v0.0.2'
    Ver = '0.0.2'
    playerData = ''
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

    Btn1 = {
        x = 100,
        y = 40,
        size = 25,
    }

    GameOver = {
        isFail = false,
        isMoreThen100 = false,
    }
-- end global variables

-- Main modules
require 'modules.load'
require 'modules.draw'
require 'modules.update'

-- Hooks
require 'hooks.mouse'
