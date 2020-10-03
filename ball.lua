ball = {x = 100, y = 100}

--this is a questionable setup but it feels more organized to me
ball.vel = {} --make ball.vel a table
ball.vel.x = 200 --x velocity
ball.vel.y = 200 --y velocity

ball.radius = 7

--you can also store functions in a table!
function ball.draw()
  love.graphics.circle("fill", ball.x, ball.y, 7)
end
