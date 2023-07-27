push = require 'push'
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

x = 150
y = 50

z = 200
d = 100


function love.load()

    love.graphics.setFont(love.graphics.newFont'font.ttf', 16)
    love.graphics.setDefaultFilter('nearest', 'nearest')
   push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false, 
        resizable = true,
        vsync = true
    })
end

function love.update()
    if love.keyboard.isDown('w') then
        y = y - 10
    end

    if love.keyboard.isDown('s') then
        y = y + 10
    end

    if love.keyboard.isDown("d") then
        x = x + 10
    end

    if love.keyboard.isDown('a') then
        x = x - 10 
    end

    if love.keyboard.isDown('up') then 
        d = d- 10
    end
     
    if love.keyboard.isDown('down')then
        d = d + 10
    end

    if love.keyboard.isDown('right')then
        z = z +10
    end

    if love.keyboard.isDown('left')then
        z = z - 10
    end
end

function love.draw()
    love.graphics.clear(39/255,47/255,68/255,255/255) 
   push:start()
   love.graphics.circle('fill', x, y, 10, 10)
   love.graphics.circle('fill', z, d, 10, 10)
   love.graphics.rectangle('fill', VIRTUAL_WIDTH/2, 0, 3, VIRTUAL_HEIGHT)
    push:finish()
end
