msgx = love.graphics.getWidth() + 50
msgy = 200

function love.update()
  msgx = msgx - 10
  if msgx < -1000 then
    msgx = love.graphics.getWidth()+50
  end
end


function love.draw()
  love.graphics.rectangle("fill", love.graphics.getHeight() / 2, love.graphics.getWidth() / 2, 20, 20)
  love.graphics.setColor(1, 0, 0)
  love.graphics.print("HI ALEX", msgx, msgy, 6, 20)
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.print("This is a pretty lame example.", 10, 200)
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.print("This lame example is twice as big.", 10, 250, 0, 2, 2)
    love.graphics.setColor(0, 0, 1, 1)
    love.graphics.print("This example is lamely vertical.", 300, 30, math.pi/2)
end
