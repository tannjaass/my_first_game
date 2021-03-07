x = 650
y = 55

love.draw = function ()
    love.graphics.circle("fill", 100, 100, 60)
    love.graphics.circle("fill", 300, 100, 60)
    love.graphics.circle("fill", 500, 100, 60)
    love.graphics.rectangle("fill", x, y, 100, 100)
end

function love.mousepressed(x, y, button)
    if button == 'l' then
       text = "CORRECT!"
    end
 end