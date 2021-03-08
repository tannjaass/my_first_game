x = 650
y = 55
text = ""

love.draw = function ()
    love.graphics.circle("fill", 100, 100, 60)
    love.graphics.circle("fill", 300, 100, 60)
    love.graphics.circle("fill", 500, 100, 60)
    love.graphics.rectangle("fill", x, y, 100, 100)
    love.graphics.print(text, 0, 0)
end

function love.mousepressed(x, y, button)
    if button == 1 then
       text = "CORRECT!"
    end
 end