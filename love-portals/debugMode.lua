function debugMode()
    --[===[
        Upd: Doesn't work
    How to get X to put a variable on it:
    To get an amount of pixel per 1 letter you need to
    1 * 0.75 * 10
    Colons are half a pixel
    So for example: If I want to print "Speed:"
    I need to do the following
    "Speed:" has 5 letters and 1 colon
    5.5 * 0.75 * 10 = 41.25
    Round it to just 41
    --]===]
    love.graphics.printf(love.timer.getFPS() ,10, 10, 200, "left", 0, 0.75, 0.75)

    love.graphics.printf("Debug Mode:On", 10, 20, 200, "left", 0, 0.75, 0.75)


    love.graphics.printf("Speed:", 10, 40, 200, "left", 0, 0.75, 0.75)
    love.graphics.printf(speed, 45, 40, 200, "left", 0, 0.75, 0.75)

    love.graphics.printf("Amount of acceleration:", 10, 50, 200, "left", 0, 0.75, 0.75)
    love.graphics.printf(accelAmount, 120, 50, 200, "left", 0, 0.75, 0.75)


    love.graphics.printf("Portals:", 10, 70, 200, "left", 0, 0.75, 0.75)
    love.graphics.printf(tostring(enablePortals), 45, 70, 200, "left", 0, 0.75, 0.75 )

    love.graphics.printf("Acceleration:", 10, 80, 200, "left", 0, 0.75, 0.75)
    love.graphics.printf(tostring(enableAccel), 70, 80, 200, "left", 0, 0.75, 0.75 )

    love.graphics.printf("Vertical movement:", 10, 90, 200, "left", 0, 0.75, 0.75)
    love.graphics.printf(tostring(enableVert), 100, 90, 200, "left", 0, 0.75, 0.75)
end