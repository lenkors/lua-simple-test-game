function GameModeCS ()
    love.graphics.setColor(1,0,0)
    GameWasStart = true
    -- Header
    love.graphics.setFont(headerFont)
    love.graphics.setColor(255,255,255)
    love.graphics.print("Score: "..score)

    local bestScoreF = love.graphics.newFont(25)
    love.graphics.setFont(bestScoreF)
    love.graphics.setColor(214, 212, 212)
    love.graphics.print('Best Score: '..BestScore, 200, 0)

    love.graphics.print('Main Menu', WindowWidth - 170, 0)

    love.graphics.print(menuBtns.saveBtn.title, menuBtns.saveBtn.x, menuBtns.saveBtn.y)
    -- end header
    
    -- Circle
    if GameOver.isFail == false then
        love.graphics.circle('fill', Btn1.x, Btn1.y, Btn1.size, 100)
        if GameOver.isMoreThen100 == true and GameOver.isFail == false then
            love.graphics.setColor(love.math.colorFromBytes(119, 128, 191))
            love.graphics.circle('fill', Btn2.x, Btn2.y, Btn2.size, 100)
        end
    else
        local gmFont = love.graphics.newFont(40)
        love.graphics.setFont(gmFont)
        love.graphics.setColor(love.math.colorFromBytes(252, 3, 3))
        love.graphics.print('Game Over', 100, 100)

        -- new font 
        local contFont = love.graphics.newFont(22)
        love.graphics.setFont(contFont)
        love.graphics.print('Press Space to continue', 100, 150)
    end
    -- end circle
end