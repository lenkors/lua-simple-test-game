-- @description handler for the mouse click event
function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        if findDistanceBetweenPoints(Btn1.x, Btn1.y, love.mouse.getX(), love.mouse.getY()) < Btn1.size then
            Btn1.x = math.random(Btn1.size, love.graphics.getWidth() - Btn1.size)
            Btn1.y = math.random(Btn1.size, love.graphics.getHeight() - Btn1.size)
            score = score + 1
        elseif findDistanceBetweenPoints(Btn2.x, Btn2.y, love.mouse.getX(), love.mouse.getY()) < Btn2.size then
            Btn2.x = math.random(Btn2.size, love.graphics.getWidth() - Btn2.size)
            Btn2.y = math.random(Btn2.size, love.graphics.getHeight() - Btn2.size)
            score = score + 1
        else
            GameOver.isFail = true
        end
    end
end

function findDistanceBetweenPoints( x1, y1, x2, y2 ) 
    return math.sqrt((y1 - y2)^2 + (x1 - x2)^2)
end 