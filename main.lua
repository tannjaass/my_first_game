x = 650
y = 55
text = ""
mX = 650
mY = 55

-- Spelets meny

Menu = function ()
    
-- text i menyn

    love.draw = function ()
        love.graphics.setColor(255, 255, 255)
        love.graphics.print("Which is out of place", 100, 50)
        love.graphics.print("Ready to play?              yes", 100, 100)
    end

-- vad klickar du på i menyn

    love.mousepressed = function (x, y)
        if x > 240 and x < 270
        and y > 100 and y < 130 then
            Game()
        end 
    end
end

-- Spelets funktion

Game = function ()

-- vad syns i spelet

    love.draw = function ()
    love.graphics.circle("fill", 100, 100, 60)
    love.graphics.circle("fill", 300, 100, 60)
    love.graphics.circle("fill", 500, 100, 60)
    love.graphics.rectangle("fill", 650, 55, 100, 100)
    love.graphics.print(text, 0, 0)
    love.graphics.print("Witch one doesn't belong here?", 280, 405)
end

-- vad klickar du på i spelet

        function love.mousepressed(mX, mY, button)
                print(mX, mY, button)
            if mY < 158 and mX > 643 then
                YouWereRight ()
            else love.graphics.setColor(255, 0, 0)
                YouWereWrong ()
        end
    end    
end

-- om man klickar rätt

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

-- tillbaks till menyn/stäng spelet

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

-- om du klickar fel

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

-- tillbaks till menyn/stäng spelet

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

-- Stäng spelet

Finish = function ()
    love.event.quit()
end

Menu ()