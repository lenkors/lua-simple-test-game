function love.load()
    -- Preload
    WindowWidth, WindowHeight = love.graphics.getDimensions()
    -- Main font
    local f = love.graphics.newFont(30)
    love.graphics.setFont(f)
    love.graphics.setColor(0,0,0,1)
    love.graphics.setBackgroundColor(0,0,0)
    love.keyboard.setKeyRepeat(true)
    love.window.setTitle(Title)
end