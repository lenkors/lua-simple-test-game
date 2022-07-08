function love.update(dt)
    LoveBird.update()
    if love.keyboard.isDown("up") then
        positionData.up = num + 100 * dt -- это увеличивает num на 100 в секунду
        playerData = dt
    end

    if love.keyboard.isDown("space") and GameOver.isFail == true then
        if score > BestScore then
            BestScore = score
        end
        score = 0
        GameOver.isFail = false
    end

    if GameOver.isFail == false and score >= 100 then
        GameOver.isMoreThen100 = true
    end

    if GameOver.isFail == true and score >= 0 then
        GameOver.isMoreThen100 = false
    end

    if GameWasStart == true then
        mainMenuBts[1] = 'Resume Game'
    end
end