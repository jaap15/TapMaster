-----------------------------------------------------------------------------------------
--
-- settings.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-----------------------------------------------------------------------------------------

local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

-- settingsButtonEvent()
--      input: none
--      output: none
--      
--      This function just switches from the settings scene to the menu scene
--  	It only allows you to return to the menu if you have legal values for
--  	minValue and maxValue
local function returnButtonEvent(event)
	if ("ended" == event.phase and minValue<=maxValue) then
		composer.gotoScene("menu")
	end
end

-- radioButtonPress()
--      input: none
--      output: none
--      
--      This function is linked to the radio buttons and will reset the interval options
-- 		to default values if the relevant radio button is checked, if not it will allow
-- 		the user to change the values of the interval switching
local function radioButtonPress(event)
	local switch = event.target

	-- This says if the "Default Values"(id = 1) radio button is checked, the interval
	-- values will be reset to default and the sliders / text will be adjusted accordingly
	if (switch.id == "1") then
		minValue = 500
		minSlider:setValue(0)
	    minText.text = "Min Interval : "..minValue
		maxValue = 5000
		maxSlider:setValue(100)
	    maxText.text = "Max Interval : "..maxValue
	end
end

-- minValueListener()
--      input: none
--      output: none
--      
--      This function is linked to the minimum interval slider and will update the 
--		minValue variable as well as the text displaying the value of minValue
local function minValueListener(event)
	minValue = (5000 * (event.value)/100) + 500 
    minText.text = "Min Interval : "..minValue
end

-- maxValueListener()
--      input: none
--      output: none
--      
--      This function is linked to the maximum interval slider and will update the 
--		maxValue variable as well as the text displaying the value of maxValue
local function maxValueListener(event)
	maxValue = (5000 * (event.value)/100) + 500
    maxText.text = "Max Interval : "..maxValue
end

-- settingsUpdater()
--      input: none
--      output: none
--      
--      This function is associated with an enterFrame event and makes sure the user cannot
-- 		alter the default values of the game. It also warns the user of illegal values
-- 		when minValue is greater than maxValue.
local function settingsUpdater(event)
	if (radioButton1.isOn) then
		minValue = 500
		minSlider:setValue(0)
	    minText.text = "Min Interval : "..minValue
		maxValue = 5000
		maxSlider:setValue(100)
	    maxText.text = "Max Interval : "..maxValue
	end

	if (minValue > maxValue) then
		errText.text = "Warning: Min interval cannot\n exceed Max interval"
	else
		errText.text = ""
	end

end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
--      input: none
--      output: none
--
--      This function creates all the objects that will be used in the scene and adds
--      them to the scene group.
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Defining options for radio button sheet
	local options = {
		width = 100,
		height = 100,
		numFrames = 2,
		sheetContentWidth = 200,
		sheetContentHeight = 100
	}

	-- Text to be displayed if invalid values selected
	errText = display.newText("Warning: Min interval cannot\n exceed Max interval", display.contentCenterX, display.contentCenterY+100, native.systemFont, 16)
	errText:setTextColor(139,0,0) -- red text

	-- Text that updates when maxValue or minValue is altered, lets the user know what values are currently selected
	maxText = display.newText("Max Interval: "..maxValue, 100, 150, native.sytemFont, 16)
	minText = display.newText("Min Interval: "..minValue, 100, 100, native.sytemFont, 16)

	-- Static Text acting as labels for the user 
	local text1 = display.newText("Default Values", display.contentCenterX-display.contentWidth*0.25, 0, native.systemFont, 16)
	local text2 = display.newText("Custom Values", display.contentCenterX+display.contentWidth*0.25, 0, native.systemFont, 16)

	-- Radio buttons are bound to radio buttons sheets so that they are linked together and 
	-- only one can be selected at a time in a radio button sheet
	local radioButtonSheet = graphics.newImageSheet("images/checkboxSheet.png", options)
	radioGroup = display.newGroup()

	-- Creating a radio button widget, this radio button is the "Default Values" radio button
	radioButton1 = widget.newSwitch( 
		{
	        x = display.contentCenterX-display.contentWidth*0.25,
	        y = 40,
	        style = "radio",
	        id = "1",
	        width = 50,
	        height = 50,
	        initialSwitchState = true,
	        onPress = radioButtonPress,
	        sheet = radioButtonSheet,
	        frameOff = 1,
	        frameOn = 2
		}
	)

	-- Creating a radio button widget, this radio button is the "Custom Values" radio button
	radioButton2 = widget.newSwitch(
    {
        x = display.contentCenterX+display.contentWidth*0.25,
        y = 40,
        style = "radio",
        id = "2",
        width = 50,
        height = 50,
        onPress = radioButtonPress,
        sheet = radioButtonSheet,
        frameOff = 1,
        frameOn = 2
    } )

	-- Adding the radio buttons to the radio button sheet
	radioGroup:insert( radioButton2 )
	radioGroup:insert( radioButton1 )

	-- Creating a slider widget, this slider widget corresponds to the minimum interval variable
	minSlider = widget.newSlider(
		{
			top = 200,
			left = 50,
			width = 200,
			value = 10,
			listener = minValueListener
	})

	-- Creating a slider widget, this slider widget corresponds to the maximum interval variable
	maxSlider = widget.newSlider(
		{
			top = 250,
			left = 50,
			width = 200,
			value = 10,
			listener = maxValueListener
	})
	
	-- Creating a button widget, this button returns us to the menu
    local returnButton = widget.newButton({    
        id = "returnButton",
        label = "Return",    
        width = 100,
        height = 20,
        fontSize = 10,
        defaultFile = "images/button.png",
        onEvent = returnButtonEvent 
    } )

	-- Positioning all objects on the scene
    returnButton.x = display.contentCenterX
    returnButton.y = display.contentCenterY+(display.contentCenterY/1.5)

    -- Adding all objects to the scene group
    sceneGroup:insert(returnButton)
    sceneGroup:insert(minSlider)
    sceneGroup:insert(maxSlider)
    sceneGroup:insert(text1)
    sceneGroup:insert(text2)
    sceneGroup:insert(minText)
    sceneGroup:insert(maxText)
    sceneGroup:insert(radioGroup)
end


-- show()
--      input: none
--      output: none
--
--      This function calls an enterFrame event listener for settingsUpdater function
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        Runtime:addEventListener("enterFrame", settingsUpdater)

    end
end


-- hide()
--      input: none
--      output: none
--
--      This function does nothing for us, but is still part of Corona SDK scene creation requirements
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end


-- destroy()
--      input: none
--      output: none
--
--      This function does nothing for us, but is still part of Corona SDK scene creation requirements
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene