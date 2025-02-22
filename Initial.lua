--[[
    Defines the Initial screen of the game
    this screen contains the START_BUTTON to start the game
]]

local colors = require("colors")
require "Button"

InitialScreen = Class{}

function InitialScreen:init(window_width, window_height)
    self.window_width = window_width
    self.window_height = window_height

    -- EDITABLE PARAMETERS (all of them)

    -- title that shows in initial screen
    self.title = {
        content = "Jogo da Feira",
        font = love.graphics.newFont("fonts/Press_Start_2P/PressStart2P-Regular.ttf", 0.05 * window_height),
        color = colors.off_white,
        margin = 50
    }

    -- subtitle to the initial screen
    self.content = {
        content = "2024",
        font = love.graphics.newFont("fonts/Press_Start_2P/PressStart2P-Regular.ttf", 0.03 * window_height),
        color = colors.off_white,
        margin = 100;
    }

    -- credits to the initial screen
    self.credits = {
        content = "made by PET Computação - UFPR",
        font = love.graphics.newFont("fonts/Press_Start_2P/PressStart2P-Regular.ttf", 0.02 * window_height),
        color = colors.off_white,
        margin = window_height - 50;
    }

    -- button to start game
    self.start_button = Button(
        (self.window_width - window_width / 5) / 2,
        (0.5 * window_height) - window_height / 14,
        window_width / 5,
        window_height / 7,
        colors.off_white,
        {
            content = "START",
            font = love.graphics.newFont("fonts/Press_Start_2P/PressStart2P-Regular.ttf", 0.04 * window_height),
            color = colors.purple  
        }
    )

    -- images that shown on initial screen (for now, just blank squares)
    self.images = {
        margin_x = 0.075 * window_width,
        margin_y = 0.3 * window_height,
        margin_between = 0.20 * window_width,
        width = 0.15 * window_width,
        height = 0.15 * window_width,
        color = colors.light_blue
    }
end

-- checks if start button was clicked
function InitialScreen:start(x, y)
    return self.start_button:clicked(x, y)
end


-- draws the screen
function InitialScreen:draw()
    -- title
    colors:setColor(self.title.color)
    size_title = self.title.font:getWidth(self.title.content)
    love.graphics.print(self.title.content, self.title.font, (self.window_width - size_title) / 2, self.title.margin)

    -- subtitle
    colors:setColor(self.content.color)
    size_content = self.content.font:getWidth(self.content.content)
    love.graphics.print(self.content.content, self.content.font, (self.window_width-size_title-size_content  / 2), self.content.margin)

    -- credits
    colors:setColor(self.credits.color)
    size_credits = self.credits.font:getWidth(self.credits.content)
    love.graphics.print(self.credits.content, self.credits.font, (self.window_width - size_credits) - 100, self.credits.margin)

    -- START_BUTTON "iniciar"
    self.start_button:draw()

end
