function love.update(dt)
    if love.keyboard.isDown("up") then
        positionData.up = num + 100 * dt -- это увеличивает num на 100 в секунду
        playerData = dt
    end

    if love.keyboard.isDown("space") and GameOver.isFail == true then
        
    end
end