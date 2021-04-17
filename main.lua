x = 650
y = 55
text = ""
mX = 650
mY = 55

love.draw = function ()
    love.graphics.circle("fill", 100, 100, 60)
    love.graphics.circle("fill", 300, 100, 60)
    love.graphics.circle("fill", 500, 100, 60)
    love.graphics.rectangle("fill", 650, 55, 100, 100)
    love.graphics.print(text, 0, 0)
    love.graphics.print("Witch one doesn't belong here?", 280, 405)
end

function love.mousepressed(mX, mY, button)
    print(mX, mY, button)
    if mY < 158 and mX > 643 then
       text = "CORRECT!"
       nextDraw() 
    else love.graphics.setColor(255, 0, 0)
        text = "INCORRECT!"
    end
end

nextDraw = function ()
    love.graphics.setColor(0, 255, 0, 1)
end
