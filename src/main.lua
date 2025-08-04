function love.load()
    -- load in submodules
    timing = require('timing')
    keyCommands = require('keyCommands')
    cursor = require('cursor')
    
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
    cursorX, cursorY = getCursorPosition()
    sleep(DT, FPSCAP)
    CIRCLECOORDS = moveCircle(CIRCLECOORDS, CIRCLESPEED)
    click = checkMouseClick()
end


function love.draw()
    love.graphics.print("Cursor Position ..." .. tostring(cursorX)..", "..tostring(cursorY), 40, 300)
    love.graphics.circle( "fill", CIRCLECOORDS[1], CIRCLECOORDS[2], CIRCLESIZE)

    love.graphics.print("Current elapsed game time ..." .. tostring(elapsedTime()), 40, 100)
    love.graphics.print("Mouse clicked ..." .. tostring(click), 40, 350)
end