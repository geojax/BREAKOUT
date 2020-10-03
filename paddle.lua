paddle = {}

paddle.width = 50
paddle.height = 10
paddle.x = 0
paddle.y = 390
paddle.speed = 4

function paddle.draw()
  love.graphics.rectangle("fill", paddle.x, paddle.y, paddle.width, paddle.height)
end

function paddle._move(isMovingRight)
  paddle.x = paddle.x + paddle.speed * (isMovingRight and -1 or 1)
end

