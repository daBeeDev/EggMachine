function getFuel()

end

function rturn()
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
end

function leave()
    turtle.back()
    turtle.turnLeft()
    turtle.forward()
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

end

function dropEggs()
    for i = 1,5 do
    	x = turtle.getSelectedSlot()
    	turtle.drop()
    	turtle.select(x+1)
	end
end

function fuells()
    fuelle = turtle.getFuelLevel()
	if fuelle < 100 then
    	turtle.select(16)
    	turtsle.refuel()
	end 
end

print("How many eggs?")
eggsInput = read()
eggs = tonumber(eggsInput)
rawStacks = eggs/16  
stacks = math.floor(rawStacks)
print(stacks)
    if stacks>4 then
		rawTrips = eggs/64
		trips = math.ceil(rawTrips)
    else
    	trips = 1
end

for i = 1, trips do
	fuells()
		if eggs > 64 then
			turtle.select(1)
			turtle.suck(64)
			eggs = eggs - 64
		else
			turtle.select(1)
			turtle.suck(eggs)
		end
	turtle.back()
	up()
	dropEggs()
	down()
	turtle.forward()
	turtle.select(1)
end
