function love.keypressed(key, scan_code, is_repeat)
    if GameState == 1 then
      menuKeypressed(key)
    elseif GameState == 4 then
        loadScreenKeypressed(key)
    end
end

function loadScreenKeypressed(key) 
    if key == "escape" then
        GameState = 1
    end

    if key == 'return' or key == 'kpenter' then
      Player:loadSave()
      GameState = 2
    end
end

function menuKeypressed(key)
  -- pressing Esc on the main menu quits the game
  if key == 'escape' then
    GameState = 1

  -- pressing up selects the previous menu item, wrapping to the bottom if necessary
  elseif key == 'up' then

    selectedMenuBtn = selectedMenuBtn - 1

    if selectedMenuBtn < 1 then
      selectedMenuBtn = #mainMenuBts
    end

  -- pressing down selects the next menu item, wrapping to the top if necessary
  elseif key == 'down' then

    selectedMenuBtn = selectedMenuBtn + 1

    if selectedMenuBtn > #mainMenuBts then
      selectedMenuBtn = 1
    end

  -- pressing enter changes the game state (or quits the game)
  elseif key == 'return' or key == 'kpenter' then

    if mainMenuBts[selectedMenuBtn] == 'Play New Game' then
      GameState = 2

    elseif mainMenuBts[selectedMenuBtn] == 'Load Game' then
      GameState = 4

    elseif mainMenuBts[selectedMenuBtn] == 'Exit' then
        GameState = 3
        love.event.quit()
    end

  end

end