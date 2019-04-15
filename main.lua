-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Marlon
-- April 14 2019
-----------------------------------------------------------------------------------------
-- backround
display.setDefault( "background", 80/255, 200/255, 100/255 )

--calculatebutton
local calculateButton = display.newImageRect( "./assets/calculate.png", 200, 60 )
calculateButton.x = display.contentCenterX
calculateButton.y = 370
calculateButton.id = " calculateButton "

--text
local title1 = display.newText( "Multiplication", 130, -10, native.systemFont, 40 )
title1:setFillColor( 255/255, 29/255, 96/255 )

local title2 = display.newText( "Calculator", 105, 27, native.systemFont, 40 )
title2:setFillColor( 255/255, 29/255, 96/255 )

local title3 = display.newText( "Created by: Marlon", 105, 60, native.systemFont, 20 )
title3:setFillColor( 100/255, 100/255, 170/255 )

local title4 = display.newText( "Input 1:", 60, 118, native.systemFont, 27 )
title4:setFillColor( 0/255, 0/255, 0/255 )

local title5 = display.newText( "Input 2:", 60, 230, native.systemFont, 27 )
title5:setFillColor( 0/255, 0/255, 0/255 )

local answerText = display.newText( "Your answer is...", 160, 450, native.systemFont, 35 )
answerText:setFillColor( 0/255, 0/255, 0/255 )


--textfields
local number1Textfield = native.newTextField( 160 , 170, 300, 60 )
number1Textfield.id = " Number 1 TextField"

local number2Textfield = native.newTextField( 160 , 280, 300, 60 )
number2Textfield.id = " Number 2 TextField"

--functions
local function calculateButtonTouch ( event )
	number1 = tonumber( number1Textfield.text )
	number2 = tonumber( number2Textfield.text )
	multiply = 1
	answer = number1

	while multiply < number2 do
		multiply = multiply + 1
		answer = answer + number1
	end

	if multiply == number2 then
		print ( answer )
	end

	
end

calculateButton :addEventListener( "touch", calculateButtonTouch )
