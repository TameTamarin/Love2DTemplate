--vFunctions for handling timing


function elapsedTime()
    -- Returns the elapsed time since the start of the execution
    return love.timer.getTime() - timeStart
end


function sleep(dt, fpscap)
    -- Sleeps for the amount of time equal to one period of the FCAP
    local s = 1/fpscap - dt
    if s > 0 then love.timer.sleep(s) end
end

