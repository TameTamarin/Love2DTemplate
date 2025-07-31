function love.load()
    -- load in submodules
    timing = require('timing')
    keyCommands = require('keyCommands')
    
    -- Setup GLobal variables
    timeStart = love.timer.getTime()
    x = 0
    FPSCAP = 60
    DT = 1/1000 --miliseconds
    CIRCLECOORDS = {100,100}
    CIRCLESIZE = 3
    CIRCLESPEED = 5
end


function love.update()
    x = x+1
    sleep(DT, FPSCAP)
    CIRCLECOORDS = moveCircle(CIRCLECOORDS, CIRCLESPEED)
end


function love.draw()
    love.graphics.print("Hello World...again ..." .. tostring(getKeypress()), 40, 300)
    love.graphics.circle( "fill", CIRCLECOORDS[1], CIRCLECOORDS[2], CIRCLESIZE)

    love.graphics.print("Hello World...again ..." .. tostring(elapsedTime()), 40, 100)
end