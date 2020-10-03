ball = {x = 100, y = 100}

--this is a questionable setup but it feels more organized to me
ball.vel = {} --make ball.vel a table
ball.vel.x = 0 --x velocity
ball.vel.y = 0 --y velocity

--you can also store functions in a table!
function ball.draw()
  love.graphics.circle("fill", ball.x, ball.y, 10)
end
