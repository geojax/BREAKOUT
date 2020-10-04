require "ball" --get ball.lua
require "paddle"
require "blocktable"
love.window.setMode(400, 400, {resizable = false})
function love.load()
  --I think these are pretty good dimensions for the screen
  love.window.setTitle("BREAKOUT!")
  
  screenSize = {}
  screenSize.width = love.graphics.getWidth()
  screenSize.height = love.graphics.getHeight()
  paddle.x = screenSize.width / 2 - paddle.width / 2
  
end

function love.update(dt)
  
  if love.keyboard.isDown("right") then
    paddle._move(false)
  end
  
  if love.keyboard.isDown("left") then
    paddle._move(true)
  end
  
  ball.x = ball.vel.x * dt + ball.x
  ball.y = ball.vel.y * dt+ ball.y
  
  --screen boundaries
  if ball.x - ball.radius < 0 or ball.x + ball.radius > love.graphics.getWidth() then
    ball.vel.x = -ball.vel.x
  end
  
  if ball.y - ball.radius < 0 then
    ball.vel.y = -ball.vel.y
  end
  
  
  if paddle.x < 0 then
    paddle.x = 0
  elseif paddle.x > screenSize.width - paddle.width then
    paddle.x = screenSize.width - paddle.width
  end
  
  --ball collide with paddle
  if ball.x > paddle.x and ball.x < paddle.x + paddle.width and
  ball.y+ball.radius >= paddle.y and ball.y < screenSize.height then
    ball.y = paddle.y - ball.radius
    ball.vel.y = -ball.vel.y
  end
  
  --[[if blocktable[math.ceil(ball.y / 10) * blocktable.width + math.ceil(ball.x/50)] > 0 then
    ball.vel.y = -ball.vel.y
  end]]
  
end


function love.draw()
  love.graphics.setColor(1, 1, 1)
  paddle.draw()
  blocktable.draw()
  love.graphics.setColor(1, 1, 1)
  ball.draw()
  love.graphics.rectangle("line", math.ceil(ball.x / 50) * block_width - block_width/2, math.ceil(ball.y / 10) * block_height, block_width, block_height)
  love.graphics.print(math.ceil(ball.y / 10))
  love.graphics.print(math.ceil(ball.x / 50), 30)
end
