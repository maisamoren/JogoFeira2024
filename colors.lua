-- alias for the colors in the project

local colors = {}

colors.indigo = { red = 45/255, green = 26/255, blue = 82/255, alpha = 1}
colors.purple = { red = 79/255, green = 23/255, blue = 86/255, alpha = 1}
colors.light_purple = { red = 97/255, green = 21/255, blue = 89/255, alpha = 1}
colors.pink = { red = 152/255, green = 16/255, blue = 98/255, alpha = 1}
colors.off_white = { red = 250/255, green = 249/255, blue = 246/255, alpha = 1}
colors.light_blue = { red = 149/255, green = 222/255, blue = 255/255, alpha = 1}
colors.blue = { red = 24/255, green = 171/255, blue = 237/255, alpha = 1}
colors.white = { red = 255/255, green = 255/255, blue = 255/255, alpha = 1}

function colors:setColor(color)
    love.graphics.setColor(color.red, color.green, color.blue, color.alpha)
end

function colors:returnColorObject(color)
    return {color.red, color.green, color.blue, color.alpha}
end

return colors