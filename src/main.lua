function love.load()
    -- load in submodules
    timing = require('timing')
    
    -- Setup GLobal variables
    timeStart = love.timer.getTime()
    x = 0
    FPSCAP = 60
    DT = 1/1000 --miliseconds
end


function love.update()
    x = x+1
    sleep(DT, FPSCAP)
end


function love.draw()
    love.graphics.print("Hello World...again ..." .. tostring(elapsedTime()), 40, 300)

    love.graphics.print("Hello World...again ..." .. tostring(elapsedTime()), 40, 100)
end