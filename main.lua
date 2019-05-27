-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--Background
display.setDefault ( "background", 100/255, 200/255, 20/255)


--Text 
local enterText = display.newText( "Enter a Number:", 160, 240, native.systemFont, 25)
enterText:setFillColor( 255/255, 255/255, 255/255 )
enterText.x = 160
enterText.y = 350

local titleText = display.newText( "Pi Calculator", 160, 240, native.systemFont, 40)
titleText:setFillColor( 255/255, 255/255, 255/255 )
titleText.x = 160
titleText.y = 50

local answerText = display.newText( "The answer Is:", 160, 240, native.systemFont, 25)
answerText:setFillColor( 255/255, 255/255, 255/255 )
answerText.x = 160
answerText.y = 450


--Enter Text
numberTextField = native.newTextField( 160, 350 + 65, 225, 40 )
numberTextField.id = "number Textfield"


--Calculate Button
local calculateButton = display.newImageRect( "./assets/sprites/enter.jpg", 200, 50 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 72.5
calculateButton.id = "calculate button"

--symbol
local PiImage = display.newImageRect( "./assets/sprites/symbol.jpg", 200, 200 )
PiImage.x = 160
PiImage.y = 180


--Calculate Function
local function calculateButtonTouch ( event )

local answer
local itt
local logic


answer = 0
itt = tonumber(numberTextField.text)
--itt short for ittereations 
logic = -1

--Loops the itterations
for math = 1, itt, 1 do
	logic = logic*-1
	answer = answer + 4/(2*math-1)*logic
	answerText.text = ("Answer: "..answer)

end 
end

--Event listeners
calculateButton:addEventListener( "touch", calculateButtonTouch )