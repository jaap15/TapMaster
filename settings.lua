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
end

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------




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

	local radioButtonSheet = graphics.newImageSheet("images/checkboxSheet.png", options)

	local radioGroup = display.newGroup()

	local radioButton1 = widget.newSwitch( 
		{
	        left = display.contentCenterX+50,
	        top = 25,
	        style = "radio",
	        id = "RadioButton1",
	        width = 50,
	        height = 50,
	        initialSwitchState = true,
	        onPress = onSwitchPress,
	        sheet = radioButtonSheet,
	        frameOff = 1,
	        frameOn = 2
		}
	)

	local radioButton2 = widget.newSwitch(
    {
        left = display.contentCenterX-50,
        top = 25,
        style = "radio",
        id = "RadioButton2",
        width = 50,
        height = 50,
        onPress = onSwitchPress,
        sheet = radioButtonSheet,
        frameOff = 1,
        frameOn = 2
    }
)
radioGroup:insert( radioButton2 )
	radioGroup:insert( radioButton1 )

    background = display.newRect(display.contentCenterX,display.contentCenterY,display.pixelWidth,display.pixelHeight)
    background:setFillColor(0,0,0)

    sceneGroup:insert( background )
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