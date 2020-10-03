require "ball" --get ball.lua
require "paddle"

function love.load()
  --I think these are pretty good dimensions for the screen
  love.window.setMode(300, 400, {resizable = false})
end

function love.keypressed(key)
  --this function is for getting keyboard input!
end


function love.update()
  
end


function love.draw()
  paddle.draw()
  ball.draw()
end
