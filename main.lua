-- Global variables
    Title = 'Simple Lua Game v0.1.0'
    Ver = '0.1.0'

    GameState = 1

    GameWasStart = false

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

    WindowWidth = 0
    WindowHeight = 0

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

    menuBtns = {
        saveBtn = {
            x = 500,
            y = 0,
            size = 100,
            title = 'Save'
        }
    }

    -- Global libs
    require 'packages.Tserial'

    -- Controllers
    require 'controllers.Player'

    -- TODO: add filed to set user name
    Player = Player:new('Player', 'First')

    -- DEBUGER By default start on port 8000
    LoveBird = require 'packages.lovebird'
-- end global variables

-- Game Views
require 'views.GameMode1'
require 'views.MainMenu'
require 'views.GameLoadScreen'

-- Main modules
require 'modules.load'
require 'modules.draw'
require 'modules.update'

-- Hooks
require 'hooks.mouse'
require 'hooks.countFunc'
require 'hooks.menuBtnsKeyboard'


