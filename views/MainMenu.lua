mainMenuBts = {'Play New Game', 'Load Game', 'Exit'}

selectedMenuBtn = 1
font = love.graphics.setNewFont(40)
fontHeight = font:getHeight()

function DrawMainMenu()
    local horizontalCenter = WindowWidth / 2
    local verticalCenter = WindowHeight / 2
    local startY = verticalCenter - (fontHeight * (#mainMenuBts / 2))

    -- draw game title
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf("Simple Lua Game", 0, 150, WindowWidth, 'center')

    love.graphics.setColor(0.25, 0.25, 0.75, 1)
    love.graphics.setNewFont(15)
    love.graphics.printf("version: "..Ver, 0, 175, WindowWidth, 'center')

    love.graphics.setColor(1, 1, 1, 1)

    for i = 1, #mainMenuBts do
        -- currently selected menu item is yellow
        if i == selectedMenuBtn then
            love.graphics.setColor(1, 1, 0, 1)
        -- other menu items are white
        else
            love.graphics.setColor(1, 1, 1, 1)
        end
      -- draw this menu item centered
      love.graphics.printf(mainMenuBts[i], 0, startY + fontHeight * (i-1), WindowWidth, 'center')
    end

    love.graphics.setColor(love.math.colorFromBytes(41, 186, 80))
    love.graphics.print('Created for testing. By Lenkors Wood',  WindowWidth - 300, WindowHeight - 55)
end