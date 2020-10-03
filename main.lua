<<<<<<< Updated upstream
msgx = love.graphics.getWidth() + 50
msgy = 200

function love.update()
  msgx = msgx - 10
  if msgx < -1000 then
    msgx = love.graphics.getWidth()+50
  end
=======
require "ball" --get ball.lua
require "paddle"

function love.load()
  --I think these are pretty good dimensions for the screen
  love.window.setMode(300, 400, {resizable = false})
  screenSize = {}
  screenSize.width = love.graphics.getWidth()
  screenSize.height = love.graphics.getHeight()
  paddle.x = screenSize.width / 2 - paddle.width / 2
end

function love.update()
  if love.keyboard.isDown("right") then
    paddle._move(false)
  elseif love.keyboard.isDown("left") then
    paddle._move(true)
  end
  
  ball.x = ball.vel.x + ball.x
  ball.y = ball.vel.y + ball.y
  
  --screen boundaries
  if ball.x < 0 or ball.x > love.graphics.getWidth() then
    ball.vel.x = -ball.vel.x
  end
  
  if ball.y < 0 then
    ball.vel.y = -ball.vel.y
  end
  
  
  if paddle.x < 0 then
    paddle.x = 0
  elseif paddle.x > screenSize.width - paddle.width then
    paddle.x = screenSize.width - paddle.width
  end
  
  --ball collide with paddle
  if ball.x > paddle.x and ball.x < paddle.x + paddle.width and
  ball.y >= paddle.y then
    ball.y = paddle.y
    ball.vel.y = -ball.vel.y
  end
  
>>>>>>> Stashed changes
end


function love.draw()
<<<<<<< Updated upstream
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
=======
  paddle.draw()
  ball.draw()
end
>>>>>>> Stashed changes
