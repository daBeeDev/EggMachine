function getFuel()
    local coals = turtle.getItemCount(16)
    if coals < 5 then
        turtle.select(16)
        rturn()
        turtle.suck(16)
        rturn()
        turtle.select(1)
    else
    end    
end

function rturn()
    turtle.turnRight()
    turtle.turnRight()
end

function up()
    for i = 1, 7 do    
        turtle.up()
    end
end 

function down()
    for i = 1 ,7 do
        turtle.down()
    end
end

function slotCheck()
    check = turtle.getItemDetail()
end

function dropEggs()
    for i = 1,5 do
        local x = turtle.getSelectedSlot()
        local y = turtle.getItemDetail(x)
        if y then                     
            if y.name == 'minecraft:egg' then
                turtle.drop()
                turtle.select(x+1)
            else
                turtle.select(x+1)
            end
        else
            turtle.select(x+1)
        end
    end
end

function fuells()
    fuelle = turtle.getFuelLevel()
    if fuelle < 100 then
        turtle.select(16)
        turtle.refuel()
        turtle.select(1)
    end 
end

print("How many eggs?")
eggsInput = read()
eggs = tonumber(eggsInput)
rawStacks = eggs/16  
stacks = math.floor(rawStacks)
    if stacks>4 then
   rawTrips = eggs/64
   trips = math.ceil(rawTrips)
    else
    trips = 1
end
         
for i = 1, trips + 1 do
    fuells()
    if eggs > 64 then
        turtle.select(1)
        turtle.suck(64)
        local x = 1
        for i = 1, 4 do
            
            turtle.select(x)
            countcheck = turtle.getItemCount(x)
            eggs = eggs - countcheck
            x = x + 1 
        end
    turtle.select(1)
    else
        turtle.select(1)
        turtle.suck(eggs)    
    end
    turtle.back()
    getFuel()
    up()
    dropEggs()
    down()
    turtle.forward()
    turtle.select(1)
end
