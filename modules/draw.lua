function love.draw()
    if GameState == 1 then
        DrawMainMenu()
    elseif GameState == 2 then
        GameModeCS()
    elseif GameState == 4 then
        LoadGame()
    elseif GameState == 3 then
        love.event.quit()
    end
end

