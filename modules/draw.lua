function love.draw()
    -- Fps haeder
    -- love.graphics.print(fps, 25, 0)
    love.graphics.setColor(255,0,0)

    -- Header
    love.graphics.setFont(headerFont)
    love.graphics.setColor(255,255,255)
    love.graphics.print(score)
    love.graphics.print(tostring(GameOver.isFail), 25, 0)
    -- end header

    -- Circle
    if GameOver.isFail == false then
        love.graphics.circle('fill', Btn1.x, Btn1.y, Btn1.size, 100)
    else
        local gmFont = love.graphics.newFont(40)
        love.graphics.setFont(gmFont)
        love.graphics.setColor(252, 3, 3)
        love.graphics.print('Game Over', 100, 100)
    end

    -- end circle
end