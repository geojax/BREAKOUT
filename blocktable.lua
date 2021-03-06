blocktable = {}
blocktable.height = 4
blocktable.width = 8
block_height = 10
block_width = 50

for y = 0, blocktable.height - 1 do
  for x = 0, blocktable.width - 1 do
    blocktable[y * blocktable.width + x] = y
  end
end

function blocktable.draw()
  for y = 0, blocktable.height - 1 do
    for x = 0, blocktable.width - 1 do
      local currentBlock = blocktable[y * blocktable.width + x]
      if currentBlock == 3 then
        love.graphics.setColor(1, 0, 0)
      elseif currentBlock == 2 then
        love.graphics.setColor(0, 1, 0)
      elseif currentBlock == 1 then
        love.graphics.setColor(0, 0, 1)
      elseif currentBlock == 0 then
        love.graphics.setColor(1, 0, 1)
      end
      if currentBlock >= 0 then
        love.graphics.rectangle("fill", x * block_width, y * block_height, block_width - 1, block_height)
      end
    end
  end
end

