function love.keypressed(key, scan_code, is_repeat)
    if GameState == 1 then
      menuKeypressed(key)
    elseif GameState == 4 then
        loadScreenKeypressed(key)
    elseif key == "backspace" then
      -- get the byte offset to the last UTF-8 character in the string.
      local byteoffset = utf8.offset(TextFieldFirstName, -1)

      if byteoffset then
          -- remove the last UTF-8 character.
          -- string.sub operates on bytes rather than UTF-8 characters, so we couldn't do string.sub(text, 1, -2).
          TextFieldFirstName = string.sub(TextFieldFirstName, 1, byteoffset - 1)
      end
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
    elseif mainMenuBts[selectedMenuBtn] == 'Profile' then
      GameState = 5
    end

  end

end