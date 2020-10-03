paddle = {}

paddle.width = 30
paddle.height = 10
paddle.x = 0
paddle.y = 390

function paddle.draw()
  love.graphics.rectangle("fill", paddle.x, paddle.y, paddle.width, paddle.height)
end
