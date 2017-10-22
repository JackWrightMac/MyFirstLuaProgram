-- Title: MyFirstLuaProgram
-- Name: Jack Wright
-- Course: ICS2O/3C
-- This program makes two images spin and move then solves a math program.

--hides status bar
display.setStatusBar(display.HiddenStatusBar)

-- sonic's speed of movement
scrollSpeedSonic = 3

-- car's speed of movement
scrollSpeedCar = 3

-- text's speed of movement
scrollSpeedText = .5


--Triangle text
local areaTextTriangle
--area of triangle
local areaOfTriangle
--base of triangle
local triangleBase = 6
--height of triangle
local triangleHeight = 6

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- sonic image with width and height
local sonic = display.newImageRect("Images/sonic.png", 200, 200)

-- car image with width and height
local car = display.newImageRect("Images/copCar.png", 200, 200)

-- triangle image with width and height
local triangle = display.newImageRect("Images/triangle.png", 200, 200)

-- set the initial x and y position of sonic
sonic.x = 100
sonic.y = 100

-- set the initial x and y position of car
car.x = 800
car.y = 100

-- set the initial x and y position of triangle
triangle.x = 500
triangle.y = 650

--calculates area of triangle
areaOfTriangle = triangleBase * triangleHeight/2

-- displays area of triangle
areaTextTriangle = display.newText("The area of a triangle with a base of \n" ..
	triangleBase .. " and a height of " .. triangleHeight .. " is " ..
	areaOfTriangle .. " pixels².", 0, 0, Arial, 50)

-- set the initial x and y position of triangle text
areaTextTriangle.x = 500
areaTextTriangle.y = 500

-- Function: MoveSonic
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value and y-value of sonic and makes sonic spin as he moves.
local function MoveSonic( event )
	--adds the scroll speed to the x value and y value of sonic
	sonic.x = sonic.x + scrollSpeedSonic
	sonic.y = sonic.y + scrollSpeedSonic
	-- makes sonic spin
	sonic.rotation = sonic.rotation + 5
    
end

-- Function: MoveCar
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value and y-value of the car and makes the car spin as he moves.
local function MoveCar( event )
--adds the scroll speed to the x value and y value of the car.
	car.x = car.x - scrollSpeedCar
	car.y = car.y + scrollSpeedCar
	-- makes the car spin
	car.rotation = car.rotation + 5
end 

-- Function: MoveText
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the y-value of triangle text.
local function MoveText( event )
	--adds the scroll speed to the y value of the text
	areaTextTriangle.y = areaTextTriangle.y - scrollSpeedText
end 

-- adds event listener MoveSonic to runtime
Runtime:addEventListener("enterFrame", MoveSonic)
-- adds event listener MoveCar to runtime
Runtime:addEventListener("enterFrame", MoveCar)
-- adds event listener MoveText to runtime
Runtime:addEventListener("enterFrame", MoveText)
