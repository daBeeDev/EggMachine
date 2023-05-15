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

    turtle.refuel()

end 

end


print("How many eggs?")


eggsInput = read()

rawStacks = eggsInput/16  

stacks = math.floor(rawStacks)

print(stacks)


fuells()

turtle.select(1)

turtle.suck(16*stacks)

turtle.back()

up()

dropEggs()

down()

turtle.forward()

turtle.select(1)
