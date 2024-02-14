--[[
    Defines the Result screen of the game
    this screen shows the selected option, and allows to go back to initial screen
]]

ResultScreen = Class{}

-- takes the option selected (see "options.lua" for more)
function ResultScreen:init(window_width, window_height, option)
    self.window_width = window_width
    self.window_height = window_height

    -- title (showing result)
    self.title = {
        content = "Voce eh ... " .. option.name .. "!",
        font = love.graphics.newFont("fonts/Minecraft.ttf", 0.08 * window_height),
        total_space = 0.2 * window_height,
        color = {
            red = 255 / 255,
            green = 255 / 255,
            blue = 255 / 255,
            alpha = 1 / 1
        },
    }

    -- description data
    self.description = {
        content = option.total_text,
        font = love.graphics.newFont("fonts/Minecraft.ttf", 0.03 * window_height),
        color = {
            red = 255 / 255,
            green = 255 / 255,
            blue = 255 / 255,
            alpha = 1 / 1
        },
        x = window_width - 0.5 * window_width,
        y = 0.3 * window_height
    }

    -- image data (just a blank rectangle for now)
    self.image = {
        width = 0.2 * window_width,
        height = 0.42 * window_height,
        color = {
            red = 255 / 255,
            green = 255 / 255,
            blue = 255 / 255,
            alpha = 1 / 1
        },
        x = 0.25 * window_width,
        y = 0.3 * window_height
    }

    -- button data
    self.back_button = {
        width = 0.1 * window_width,
        height = 0.1 * window_height,
        color = {
            red = 0 / 255,
            green = 0 / 255,
            blue = 255 / 255,
            alpha = 1 / 1
        },
        x = window_width - 0.15 * window_width,
        y = window_height - 0.11 * window_height,
        text = {
            content = "BACK",
            font = love.graphics.newFont("fonts/Minecraft.ttf", 0.04 * window_height),
            color = {
                red = 255 / 255,
                green = 255 / 255,
                blue = 255 / 255,
                alpha = 1 / 1
            }
        }
    }
end

-- checks if back button was clicked
function ResultScreen:back(x, y)
    return (x >= self.back_button.x and x <= self.back_button.x + self.back_button.width) and (y >= self.back_button.y and y <= self.back_button.y + self.back_button.width)
end


-- draws the screen
function ResultScreen:draw()
    -- image
    setColor(self.title.color)
    title_width = self.title.font:getWidth(self.title.content)
    title_height = self.title.font:getHeight(self.title.content)
    title_y_margin = (self.title.total_space - title_height) / 2
    love.graphics.print(self.title.content, self.title.font, (self.window_width - title_width) / 2, title_y_margin)

    -- image (TO-DO: just a blank rectangle for now)
    setColor(self.image.color)
    love.graphics.rectangle("fill", self.image.x, self.image.y, self.image.width, self.image.height)

    -- description
    setColor(self.description.color)
    love.graphics.print(self.description.content, self.description.font, self.description.x, self.description.y)

    -- back button
    setColor(self.back_button.color)
    love.graphics.rectangle("fill", self.back_button.x, self.back_button.y, self.back_button.width, self.back_button.height)
    setColor(self.back_button.text.color)
    back_button_text_width = self.back_button.text.font:getWidth(self.back_button.text.content)
    back_button_text_height = self.back_button.text.font:getHeight(self.back_button.text.content)
    -- TO-DO: understand better how centralization works (+5)
    love.graphics.print(self.back_button.text.content, self.back_button.text.font, self.back_button.x + (self.back_button.width - back_button_text_width) / 2, self.back_button.y + (self.back_button.height - back_button_text_height) / 2 + 5)
end