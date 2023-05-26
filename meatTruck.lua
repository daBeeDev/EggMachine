function gas()
    local gas = turtle.getFuelLevel()
    if gas < 100 then
        print(gas) 
        turtle.select(16)
        turtle.refuel(8)
    else
        print(gas)
    end
end    
    
function getStuff()
    local x = 1
    for i = 1, 15 do
        turtle.select(x)
        turtle.suck()
    end
end

function going()
    turtle.turnLeft()
    for i = 1, 2 do 
        turtle.forward()
    end
end

function leaving()
    for i = 1, 2 do
        turtle.back()
    end
    turtle.turnRight()
end

function dropStuff()
    x = 1
    for i = 1 , 15 do
        turtle.select(x)     
        item = turtle.getItemDetail()
        if item then        
            if item.name == 'minecraft:chicken' then 
                turtle.drop()
            else    
            end
        else
        end        
    x = x + 1
    end
end

function notEggs()
    turtle.up()
    x = 1
    for i = 1, 15 do
        turtle.select(x) 
        turtle.drop()
        x = x + 1
    end
    turtle.down()
end

gas()
getStuff()
local home = vector.new(gps.locate())
going()
dropStuff()
notEggs()
leaving()
local result = vector.new(gps.locate())
displacement = result - home
print(displacement)
