function launch()
    redstone.setOutput('right' , true)
    sleep(0.1)
    redstone.setOutput('left', true)
    sleep(0.1)
    redstone.setOutput('right', false)
    sleep(0.1)
    redstone.setOutput('left' , false)    
end

function getInput()
    term.setCursorPos(1,2)
    term.write('LaunchEggs!')
    sleep(1)
    term.clear()
    term.setCursorPos(1,3)
    term.write("how many eggs?")
    term.setCursorPos(2,4)
    eggs = read()
    x = eggs / 2
end

term.clear()
perc = 4
progress = 1 
getInput()
term.clear()
for i=1, x do
    launch()
    perc = 0
    progresstemp = progress/eggs 
    term.setCursorPos(25,3)
    term.clearLine()
    percentage = progresstemp * 200
    term.write(math.floor(percentage)) 
    perc = progresstemp * 100
    term.setCursorPos(perc,2)
    term.write('o')
    progress = progress + 1   
    sleep(0.1)
end
term.setCursorPos(1,4)
