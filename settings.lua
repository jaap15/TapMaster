-----------------------------------------------------------------------------------------
--
-- settings.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local composer = require( "composer" )

local scene = composer.newScene()

local widget = require("widget")

local function onSwitchPress(event)
	local switch = event.target
	print ("Switch with ID "..switch.id.."is on: "..tostring(switch.isOn))
	if (switch.id == "1") then
		minValue = 500
		minSlider:setValue(0)
	    minText.text = "Min Interval : "..minValue
		maxValue = 5000
		maxSlider:setValue(100)
	    maxText.text = "Max Interval : "..maxValue
	end
end

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local function returnButtonEvent(event)
	if ("ended" == event.phase and minValue<maxValue) then
		composer.gotoScene("menu")
	elseif (minValue>maxValue) then
        --native.showAlert("Error:", "Min Interval > Max Interval", {"Return to Settings"}, doNothing)
	end
end


local function minValueListener(event)
	minValue = (5000 * (event.value)/100) + 500 
    minText.text = "Min Interval : "..minValue
end

local function maxValueListener(event)
	maxValue = (5000 * (event.value)/100) + 500
    maxText.text = "Max Interval : "..maxValue
end

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
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
	local options = {
		width = 100,
		height = 100,
		numFrames = 2,
		sheetContentWidth = 200,
		sheetContentHeight = 100
	}

	errText = display.newText("Warning: Min interval cannot\n exceed Max interval", display.contentCenterX, display.contentCenterY+100, native.systemFont, 16)
	errText:setTextColor(139,0,0)
	maxText = display.newText("Max Interval: "..maxValue, 100, 150, native.sytemFont, 16)
	minText = display.newText("Min Interval: "..minValue, 100, 100, native.sytemFont, 16)
	local text1 = display.newText("Default Values", display.contentCenterX-display.contentWidth*0.25, 0, native.systemFont, 16)
	local text2 = display.newText("Custom Values", display.contentCenterX+display.contentWidth*0.25, 0, native.systemFont, 16)

	local radioButtonSheet = graphics.newImageSheet("images/checkboxSheet.png", options)

	radioGroup = display.newGroup()

	radioButton1 = widget.newSwitch( 
		{
	        x = display.contentCenterX-display.contentWidth*0.25,
	        y = 40,
	        style = "radio",
	        id = "1",
	        width = 50,
	        height = 50,
	        initialSwitchState = true,
	        onPress = onSwitchPress,
	        sheet = radioButtonSheet,
	        frameOff = 1,
	        frameOn = 2
		}
	)

	radioButton2 = widget.newSwitch(
    {
        x = display.contentCenterX+display.contentWidth*0.25,
        y = 40,
        style = "radio",
        id = "2",
        width = 50,
        height = 50,
        onPress = onSwitchPress,
        sheet = radioButtonSheet,
        frameOff = 1,
        frameOn = 2
    } )

	minSlider = widget.newSlider(
		{
			top = 200,
			left = 50,
			width = 200,
			value = 10,
			listener = minValueListener
	})

	maxSlider = widget.newSlider(
		{
			top = 250,
			left = 50,
			width = 200,
			value = 10,
			listener = maxValueListener
	})
	
    local returnButton = widget.newButton({    
        id = "returnButton",
        label = "Return",    
        width = 100,
        height = 20,
        fontSize = 10,
        defaultFile = "images/button.png",
        onEvent = returnButtonEvent 
    } )

    returnButton.x = display.contentCenterX
    returnButton.y = display.contentCenterY+(display.contentCenterY/1.5)
	radioGroup:insert( radioButton2 )
	radioGroup:insert( radioButton1 )

    background = display.newRect(display.contentCenterX,display.contentCenterY,display.pixelWidth,display.pixelHeight)
    background:setFillColor(0,0,0)

    sceneGroup:insert( background )
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