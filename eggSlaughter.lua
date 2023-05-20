function one80()
    turtle.turnLeft(
    turtle.turnLeft()
end

function a100pecks()
    for i = 1, 1000 do
        turtle.attack()
    end
end

function chest()
    one80()
    for i = 1, 16 do
    turtle.select(i)
    turtle.drop()
    end
    one80()   
end

redstone.setOutput('left' , true) 
a100pecks()
redstone.setOutput('left' , false)
chest()
