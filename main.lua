x = 650
y = 55
text = ""
mX = 650
mY = 55

love.math.setRandomSeed(os.time());

Menu = function ()
    
    love.draw = function ()
        love.graphics.setColor(255, 255, 255)
        love.graphics.print("Which is out of place", 100, 50)
        love.graphics.print("Ready to play?              yes", 100, 100)
    end
    love.mousepressed = function (x, y)
        if x > 240 and x < 270
        and y > 100 and y < 130 then
            Game()
        end 
    end
end


Game = function ()

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
                YouWereRight ()
            else love.graphics.setColor(255, 0, 0)
                YouWereWrong ()
        end
    end    
end

YouWereRight = function ()
    love.draw = function ()
        love.graphics.circle("fill", 100, 100, 60)
        love.graphics.circle("fill", 300, 100, 60)
        love.graphics.circle("fill", 500, 100, 60)
        love.graphics.rectangle("fill", 650, 55, 100, 100)
        love.graphics.print(text, 0, 0)
        love.graphics.print("Back to menu?", 280, 405)
        love.graphics.print("You were right", 100, 400)
        love.graphics.print("yes", 100, 450)
        love.graphics.print("No", 150, 450)
    end
        love.graphics.setColor(0, 255, 0, 1)

        love.mousepressed = function (x, y)
            if x > 100 and x < 120
            and y > 440 and y < 470 then
                Menu() 
        end
            if x > 150 and x < 170
            and y > 440 and y < 470 then
                Finish() 
        end
    end
end

YouWereWrong = function ()

    love.draw = function ()
        love.graphics.circle("fill", 100, 100, 60)
        love.graphics.circle("fill", 300, 100, 60)
        love.graphics.circle("fill", 500, 100, 60)
        love.graphics.rectangle("fill", 650, 55, 100, 100)
        love.graphics.print(text, 0, 0)
        love.graphics.print("You were wrong", 280, 405)
        love.graphics.print("Back to menu?", 100, 400)
        love.graphics.print("yes", 100, 450)
        love.graphics.print("No", 150, 450)
    end
        love.graphics.setColor(255, 0, 0)
        love.mousepressed = function (x, y)
            if x > 100 and x < 120
            and y > 440 and y < 470 then
                Menu() 
        end
            if x > 150 and x < 170
            and y > 440 and y < 470 then
                Finish() 
        end
    end
end

Finish = function ()
    love.event.quit()
end

Menu ()

-- function love.draw()
--     randomNumber = love.math.random(1, 100)
--     love.print(randomNumber)
-- end

-- function love.draw(randomNumber)
--     randomNumber = love.math.random(1, 100)
--     love.graphics.print(randomNumber)
-- end

-- function love.load()
--     number = math.random(1, 4)
-- end

-- function love.draw()
--     love.graphics.print(number, 10, 10)
-- end

-- -- Press r on the game to resett
-- function love.keypressed(key)
--     if key == "r" then
--         number = math.random(1, 4)
--     end
-- end

